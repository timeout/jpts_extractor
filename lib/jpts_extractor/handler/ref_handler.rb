require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/ref_builder'
require 'jpts_extractor/article_part/name'

module JPTSExtractor
  module Handler
    class RefHandler < SubHandler

      def initialize
        @builder = Builder::RefBuilder.new
      end

      attr_reader :builder, :name, :name_type

      Name = Struct.new(:type, :name)

      def on_start_element(name)
        push_event(name)
        case name
        when :'element-citation', :'mixed-citation', :'person-group'
          switch_attr_on
        when :'article-title', :volume, :'chapter-title',
          :year, :month, :day, :fpage, :lpage, :issue, :'publisher-loc',
          :'publisher-name'
          switch_text_on
        when :source
          switch_text_on
          self.builder.text!
        when :name
          @name = Name.new
          @name.type = @name_type.to_sym if @name_type
          @name.name = ArticlePart::Name.new
        when :surname 
          switch_text_on
        when :'given-names'
          switch_text_on
        end
      end

      def on_end_element(name)
        pop_event
        case name
        when :'element-citation', :'mixed-citation'
          switch_attr_off
        when :source
          self.builder.source!
          switch_text_off
        when :volume
          builder.volume = @text.dup
          switch_text_off
        when :'article-title'
          builder.article_title = @text.dup
          switch_text_off
        when :'chapter-title'
          builder.chapter_title = @text.dup
          switch_text_off
        when :year
          builder.year = @text.dup
          switch_text_off
        when :month
          builder.month = @text.dup
          switch_text_off
        when :day
          builder.day = @text.dup
          switch_text_off
        when :fpage
          builder.fpage = @text.dup
          switch_text_off
        when :lpage
          builder.lpage = @text.dup
          switch_text_off
        when :issue
          builder.issue = @text.dup
          switch_text_off
        when :'publisher-loc'
          builder.publisher_loc = @text.dup
          switch_text_off
        when :'publisher-name'
          builder.publisher_name = @text.dup
          switch_text_off
        when :surname
          @name.name.surname = @text.dup
          switch_text_off
        when :'given-names'
          @name.name.given_names = @text.dup
          switch_text_off
        when :name
          builder.add_editor_name(@name.dup) if @name.type == :editor
          builder.add_author_name(@name.dup) if @name.type.nil? or @name.type == :author
        end
      end

      def on_attr(name, value)
        builder.publication_type = value if attr? and (name == :'publication-type' or
                                                       name == :'mixed-citation')
        @name_type = value if name == :'person-group-type'
      end

      def on_text(value)
        @text = value if text?
      end

    end
  end
end

