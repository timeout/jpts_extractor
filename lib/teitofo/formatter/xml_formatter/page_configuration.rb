module TeiToFo
  module Formatter
    module XmlFormatter
      class PageConfiguration

        def initialize
          yield self if block_given?
        end

        attr_accessor :page_height, :page_width, :margin_top, 
          :margin_bottom, :margin_left, :margin_right,
          :ornament_foreground_colour

        def page_height
          @page_height || '297mm'
        end

        def page_width
          @page_width || '210mm'
        end
        
        def margin_top
          @margin_top || '22mm'
        end

        def margin_bottom
          @margin_bottom || '22mm'
        end

        def margin_left
          @margin_left || '12mm'
        end

        def margin_right
          @margin_right || '12mm'
        end

        def ornament_foreground_colour
          @ornament_foreground_colour || 'gray'
        end

      end
    end
  end
end
