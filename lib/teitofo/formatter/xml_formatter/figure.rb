require 'dimensions'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Figure

        def initialize(xml)
          @xml = xml
        end

        def format(figure)

          @xml.tag!('fo:block-container', {
            margin: '0pt'
          }) do
            @xml.tag!('fo:block', {
              width: '100%',
              'border-style': 'solid',
              'border-width': 'normal',
              'text-align': 'right'
            }) do
              if landscape? figure
                @xml.tag!('fo:external-graphic', {
                  src: "#{figure.graphic_path}",
                  'content-width': '160mm'
                })
              else
                @xml.tag!('fo:external-graphic', {
                  src: "#{figure.graphic_path}",
                  # 'content-width': '110mm'
                })
              end
            end
          end
        end

        private
        def landscape? (figure)
          graphic = figure.graphic_path
          width = Dimensions.width graphic
          height = Dimensions.height graphic
          width.to_f / height > 1.6
        end
      end
    end
  end
end
