module JPTSExtractor
  module ArticlePart
    module InlineText
      class InlineTextDecorator
        def initialize(inline_text)
          self.inline_text = inline_text
        end

        attr_reader :inline_text

        def text= (text)
          self.inline_text.text = text
        end

        def text
          self.inline_text.text
        end

        def switch_citation_on
          self.inline_text.switch_citation_on
        end

        def switch_citation_off
          self.inline_text.switch_citation_off
        end

        def citation?
          self.inline_text.citation?
        end

        def stylish?
          self.inline_text.stylish?
        end

        def styles
          self.inline_text.styles
        end

        def add_style(key, attribute)
          self.inline_text.add_style(key, attribute)
        end

        def format(formatter)
          self.inline_text.format(formatter)
        end

        def to_s
          self.inline_text.to_s
        end

        private
        attr_writer :inline_text
      end
    end
  end
end
