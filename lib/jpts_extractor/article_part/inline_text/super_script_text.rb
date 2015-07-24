require 'jpts_extractor/article_part/inline_text/inline_text_decorator'

module JPTSExtractor
  module ArticlePart
    module InlineText
      class SuperScriptText < InlineTextDecorator
        def initialize(inline_text)
          super(inline_text)
          add_style(:'vertical-align', 'super')
          add_style(:'font-size', '8pt')
        end
      end
    end
  end
end
