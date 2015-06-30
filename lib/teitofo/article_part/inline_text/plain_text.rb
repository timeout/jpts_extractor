require 'teitofo/article_part/inline_text/inline_text_decorator'

module TeiToFo
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
