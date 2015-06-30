require 'teitofo/article_part/inline_text/inline_text_decorator'

module TeiToFo
  module ArticlePart
    module InlineText
      class Citation < InlineTextDecorator
        def initialize(inline_text)
          super(inline_text)
          self.switch_citation_on
        end
      end
    end
  end
end
