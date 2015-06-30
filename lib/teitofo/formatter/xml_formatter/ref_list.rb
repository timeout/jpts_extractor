require 'teitofo/formatter/xml_formatter/ref'

module TeiToFo
  module Formatter
    module XmlFormatter
      class RefList

        def initialize(xml)
          @xml = xml
          @ref_formatter = Ref.new(@xml)
        end

        attr_reader :xml, :ref_formatter

        def format(ref_list)
          @xml.tag!('fo:block', {
            'margin-top': '10pt',
            'font-size': '12pt',
            'font-weight': 'bold'
          }) do
            @xml.tag!('fo:inline', {}, 'References')
          end
          @xml.tag!('fo:block', {
            'margin-top': '8pt',
            'text-align': 'justify', 
            'font-size': '9pt',
            'font-family': 'serif'
          }) do
            @xml.tag!('fo:list-block', {
              'provisional-distance-between-starts':'6mm', 
              'end-indent': '12mm', 
              'start-indent': '12mm'
            }) do
              ref_list.each_with_index do |reference, index|
                @xml.tag!('fo:list-item') do
                  @xml.tag!('fo:list-item-label', {
                    'end-indent': 'label-end()'
                  }) do
                    @xml.tag!('fo:block') do
                      @xml.tag!('fo:inline', {}, "#{index + 1}. ")
                    end
                  end
                  @xml.tag!('fo:list-item-body', {
                    'start-indent': 'body-start()'
                  }) do
                    @xml.tag!('fo:block') do
                      reference.format(@ref_formatter)
                    end
                  end
                end
              end
            end
          end
        end

      end
    end
  end
end
