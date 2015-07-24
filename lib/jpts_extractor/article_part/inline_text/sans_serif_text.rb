require 'jpts_extractor/article_part/inline_text/inline_text_decorator'

module JPTSExtractor
  module ArticlePart
    module InlineText
      class SansSerifText < InlineTextDecorator
        def initialize(inline_text)
          super(inline_text)
          add_style(:'font-family', 'sans-serif')
        end
      end
    end
  end
end
