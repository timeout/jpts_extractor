require 'teitofo/handler/subhandler'
require 'teitofo/builder/article_meta_builder'

require 'teitofo/handler/text_block_handler'

module TeiToFo
  module Handler
    class ArticleMetaHandler < SubHandler
      def initialize
        @builder = Builder::ArticleMetaBuilder.new
      end

      TextHandler = Struct.new(:name, :text_block_handler)

      attr_reader :builder
      attr_accessor :text_handler

      def on_start_element(name)
        push_event(name)
        case name
        when :subject, :'article-title', :'copyright-year',
          :'copyright-holder'
          switch_text_on
        when :fn, :'pub-date', :date, :contrib, :aff
          switch_attr_on
        end
      end

      def on_end_element(name)
        pop_event
        case name
        when :subject
          @builder.subject = @text
          switch_text_off
        when :'article-title'
          @builder.article_title = @text
          switch_text_off
        when :fn
          switch_attr_off
        when :p
          if self.text_handler
            text_block = self.text_handler.text_block_handler.builder.text_block
            @builder.conflict = text_block if self.text_handler.name == :conflict
            @builder.conceived = text_block if self.text_handler.name == :conceived
          end
        when :'copyright-year'
          @builder.copyright_year = @text
          switch_text_off
        when :'copyright-holder'
          @builder.copyright_holder = @text
          switch_text_off
        # date
        when :day
          @builder.pub_date_day = @text.to_i if :'pub-date' == top 
          @builder.recv_date_day = @text.to_i if @value == :received
          @builder.accept_date_day = @text.to_i if @value == :accepted
        when :month
          @builder.pub_date_month = @text.to_i if :'pub-date' == top
          @builder.recv_date_month = @text.to_i if @value == :received
          @builder.accept_date_month = @text.to_i if @value == :accepted
        when :year
          @builder.pub_date_year = @text.to_i if :'pub-date' == top
          @builder.recv_date_year = @text.to_i if @value == :received
          @builder.accept_date_year = @text.to_i if @value == :accepted
        when :'pub-date'
          @builder.build_pub_date if text?
          switch_text_off
          switch_attr_off
        when :date
          @builder.build_recv_date if @value == :received
          @builder.build_accept_date if @value == :accepted
          switch_text_off
          @value = nil
        # authors
        when :surname
          @builder.surname = @text if @value == :author
        when :'given-names'
          @builder.given_names = @text if @value == :author
        when :sup
          @builder.add_author_ref(@text) if @value == :author
        when :contrib
          @builder.author if @value == :author
          switch_text_off
        when :'contrib-group'
          @builder.build_authors if @value == :author
          @value = :nil
        # affiliations
        when :label
          @builder.aff_label = @text if @value == :affiliation
        when :'addr-line'
          @builder.aff_addr_line = @text if @value == :affiliation
        when :aff
          @builder.build_affiliation if @value == :affiliation
          switch_text_off
          switch_attr_off
          @value = :nil
        end
      end

      def on_text(value)
        self.text_handler.text_block_handler.on_text(value) if self.text_handler
        @text = value if text?
      end

      def on_attr(name, value)
        if attr?
          case (value)
          when 'conflict'
            @text_handler = TextHandler.new(:conflict, TextBlockHandler.new)
          when 'con'
            @text_handler = TextHandler.new(:conceived, TextBlockHandler.new)
          when 'epub' # <pub-date pub-type="epub">
            switch_text_on
          when 'received'
            @value = value.to_sym
            switch_text_on
            switch_attr_off
          when 'accepted'
            @value = value.to_sym
            switch_text_on
            switch_attr_off
          when 'author'
            @value = value.to_sym
            switch_text_on
            switch_attr_off
          when /^aff[0-9]+/
            @value = :affiliation
            switch_text_on
          end
        end
      end

    end
  end
end
