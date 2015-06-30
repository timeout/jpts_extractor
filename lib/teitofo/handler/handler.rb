require 'teitofo/stack'
require 'teitofo/handler/article_handler'
require 'teitofo/handler/front_handler'
require 'teitofo/handler/journal_meta_handler'
require 'teitofo/handler/article_meta_handler'
require 'teitofo/handler/abstract_handler'
require 'teitofo/handler/section_handler'
require 'teitofo/handler/table_handler'
require 'teitofo/handler/text_block_handler'
require 'teitofo/handler/back_handler'
require 'teitofo/handler/ref_list_handler'
require 'teitofo/handler/ref_handler'
require 'teitofo/handler/body_handler'
require 'teitofo/handler/null_handler'

require 'ox'
require 'colorize'
require 'logger'

module TeiToFo
  module Handler
    class Handler < Ox::Sax

      def initialize
        @stack = Stack.new
        @stack.push(NullHandler.new)

        @logger = Logger.new('debug.log')
        @logger.level = Logger::DEBUG
        @logger.formatter = proc do |severity, datetime, progname, msg|
          date_format = datetime.strftime("%Y-%m-%d %H:%M:%S")
          if ['WARN', 'ERROR', 'FATAL'].include? severity
            msg = msg.colorize(:red)
          else
            msg = msg.colorize(:green)
          end
          "[#{date_format}] #{severity}  (#{progname}): #{msg}\n"
        end
      end

      attr_reader :stack

      def article
        @article
      end

      def start_element(name)
        case name
        when :article
          @stack.push(ArticleHandler.new)
        when :front
          @stack.push(FrontHandler.new)
        when :body
          @stack.push(BodyHandler.new)
        when :back
          @stack.push(BackHandler.new)
        when :'journal-meta'
          @stack.push(JournalMetaHandler.new)
        when :'article-meta'
          @stack.push(ArticleMetaHandler.new)
        when :abstract
          @stack.push(AbstractHandler.new)
        when :sec
          @stack.push(SectionHandler.new)
        when :table
          @stack.push(TableHandler.new)
        when :'ref-list'
          @stack.push(RefListHandler.new)
        when :ref
          @stack.push(RefHandler.new)
        else
          @logger.debug "#{self.class.name}##{__method__}(#{name})"
        end

        # names = @stack.map do |handler|
        #   handler.class.name[18..-1]
        # end
        # @logger.debug "#{names.join('|')}"
        @stack.top.on_start_element(name)
      end

      def end_element(name)
        @stack.top.on_end_element(name)
        case name
        when :ref
          raise Exceptions::NullHandlerError.new unless @stack.top.respond_to? :builder
          raise Exceptions::BadParseError.new(
            "#{@stack.top.builder.class} cannot build product, #{method_name(name)}"
          ) unless @stack.top.builder.respond_to? method_name(name)
          product = @stack.top.builder.ref
          @stack.pop

          raise Exceptions::BadParseError.new unless @stack.top.respond_to? :builder
          raise Exceptions::BadParseError.new(
            "#{@stack.top.builder.class} : unknown method :<<"
          ) unless @stack.top.builder.respond_to? :<<

          @stack.top.builder << product
        when :table
          raise Exceptions::NullHandlerError.new unless @stack.top.respond_to? :builder
          raise Exceptions::BadParseError.new(
            "#{@stack.top.builder.class} cannot build product, #{method_name(name)}"
          ) unless @stack.top.builder.respond_to? method_name(name)
          product = @stack.top.builder.table
          @stack.pop

          raise Exceptions::BadParseError.new unless @stack.top.respond_to? :builder
          # abstract also responds to :<<, trust xml, heh... :S :>>
          raise Exceptions::BadParseError.new unless @stack
            .top.builder.respond_to? :<<

          @stack.top.builder << product
# puts "========================="
# @stack.top.builder.sec.each do |subsection|
#   puts subsection
# end
        when :sec
          raise Exceptions::NullHandlerError.new unless @stack.top.respond_to? :builder
          raise Exceptions::BadParseError.new(
            "#{@stack.top.builder.class} cannot build product, #{method_name(name)}"
          ) unless @stack.top.builder.respond_to? method_name(name)
          product = @stack.top.builder.sec
          @stack.pop

          raise Exceptions::BadParseError.new unless @stack.top.respond_to? :builder
          # abstract also responds to :<<, trust xml, heh... :S :>>
          raise Exceptions::BadParseError.new unless @stack
            .top.builder.respond_to? :<<

          @stack.top.builder << product

        when :front, :body, :back, :'journal-meta', :'article-meta', 
          :abstract, :'ref-list'
          assemble_product(name)
        when :article
          raise Exceptions::NullHandlerError.new unless @stack.top.respond_to? :builder
          raise Exceptions::BadParseError.new unless @stack.top.builder.respond_to? :article
          article = @stack.top.builder.article
          @stack.pop
          @article = article
        else
          @logger.debug "#{self.class.name}##{__method__}(#{name})"
        end

        # names = @stack.map do |handler|
        #   handler.class.name[18..-1]
        # end
        # @logger.debug "#{names.join('|')}"
      end

      def attr(name, value)
        @stack.top.on_attr(name, value)
      end

      def text(value)
        @stack.top.on_text(value)
      end

      private
      def writer_method(name)
        (method_name(name) + '=').to_sym
      end

      def method_name(name)
        name.to_s.gsub '-', '_'
      end

      def assemble_product(name)
        raise Exceptions::NullHandlerError.new(
          "#{@stack.top.class} doesn't have a builder"
        ) unless @stack.top.respond_to? :builder
        raise Exceptions::BadParseError.new(
          "#{@stack.top.builder.class} cannot build product, #{method_name(name)}"
        ) unless @stack.top.builder.respond_to? method_name(name)

        product = @stack.top.builder.send method_name(name)
        @stack.pop

        raise Exceptions::BadParseError.new unless @stack.top.respond_to? :builder
        raise Exceptions::BadParseError.new unless @stack
          .top.builder.respond_to? writer_method(name)

        @stack.top.builder.send writer_method(name), product
      end
    end
  end
end
