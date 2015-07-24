require 'jpts_extractor/article_part/inline_text/inline_text_decorator'

module JPTSExtractor
  module ArticlePart
    module InlineText
      class PlainText < InlineTextDecorator
        def initialize(inline_text)
          super(inline_text)
        end
      end
    end
  end
end
