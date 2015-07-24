module JPTSExtractor
  module ArticlePart
    module InlineText
      class InlineText

        def initialize(text = String.new)
          self.text = text
          self.citation = false
        end

        attr_accessor :text

        def switch_citation_on
          self.citation = true
        end

        def switch_citation_off
          self.citation = false
        end

        def stylish?
          not @styles.nil?
        end

        def styles
          Hash.new unless self.stylish?
          @styles
        end

        def citation?
          citation
        end

        def add_style(key, value)
          @styles ||= Hash.new
          @styles[key] = value
          self
        end

        def format(formatter)
          formatter.format(self)
        end

        def to_s
          @styles ? "#{@styles} #{@text}" : "#{@text}"
        end

        private
        attr_accessor :citation

      end
    end
  end
end
