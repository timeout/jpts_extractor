require 'teitofo/article_part/inline_text/inline_text_decorator'

module TeiToFo
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
