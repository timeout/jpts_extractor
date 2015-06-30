require 'teitofo/stack'
require 'teitofo/handler/front_handler'
require 'teitofo/handler/section_handler'
require 'teitofo/handler/back_handler'
require 'teitofo/handler/body_handler'
require 'teitofo/handler/null_handler'
require 'teitofo/builder/article_builder'
require 'teitofo/builder/front_builder'
require 'teitofo/builder/section_builder'

require 'ox'
require 'colorize'

module TeiToFo
  class Handler < Ox::Sax

    def initialize
      @stack = Stack.new
      @stack.push(Handler::NullHandler.new)
      @recursive = false
    end

    def build(builder)
      @builder = builder
    end

    def start_element(name)
      case name
      when :sec
        @stack.push(Handler::SectionHandler.new)
      when :front
        @stack.push(Handler::FrontHandler.new)
      when :body
        @stack.push(Handler::BodyHandler.new)
      when :back
        @stack.push(Handler::BackHandler.new)
      end

      @stack.top.on_start_element(name)
    end

    def end_element(name)
      case name
      when :sec
        section_builder = @stack.top.builder.dup
        @stack.pop

        # if @stack.top.class == SectionHandler
        puts @stack.top
        @stack.top.builder << section_builder
        # else
        #   @builder.add_section(section_builder)
        # end
      when :front
        front = @stack.top.builder
        @stack.pop
        @stack.top.builder.front = front
      when :body
        @stack.pop
      when :article
        puts "*** STACK on article: #{@stack.to_s}"
        @builder.format
      end
      @stack.top.on_end_element(name)
    end

    def attr(name, value)
      @stack.top.on_attr(name, value)
    end

    def text(value)
      @stack.top.on_text(value)
    end

  end
end

