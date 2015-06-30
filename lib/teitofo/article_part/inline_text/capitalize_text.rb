require 'teitofo/article_part/inline_text/inline_text_decorator'

module TeiToFo
  module ArticlePart
    module InlineText
      class CapitalizeText < InlineTextDecorator
        def initialize(inline_text)
          super(inline_text)
          self.text= (self.text.upcase)
        end
      end
    end
  end
end
