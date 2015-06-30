require 'teitofo/article_part/inline_text/inline_text_decorator'

module TeiToFo
  module ArticlePart
    module InlineText
      class BoldText < InlineTextDecorator

        def initialize(inline_text)
          super(inline_text)
          add_style(:'font-weight', 'bold')
        end

      end
    end
  end
end
