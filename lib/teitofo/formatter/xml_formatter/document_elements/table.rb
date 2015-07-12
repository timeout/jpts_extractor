module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_table(table)
          self.xml.tag!('fo:table', {
            width: '100%',
            'table-layout': 'fixed',
            'padding-top': '6pt'
          }) do
            format_table_columns(table)

            format_table_header(table)

            format_table_body(table)
          end
        end

        private
        def format_table_columns(table)
            self.xml.comment! 'columns'

            widths = calculate_column_widths(table)

            length = 0
            idx = nil
            widths.each_with_index do |w, index| 
              if length < w.size
                length = w.size
                idx = index
              end
            end

            table.columns.each_with_index do |column, index|
              width = widths[idx][index]
              self.xml.tag!('fo:table-column', {
                'column-width': "proportional-column-width(#{width})"
              })
            end
        end

        # total length: assume average line ~ 120chars
        #     ie. total length >90 => wrapping
        # relative lengths: <25 => 1 column >25 => 2 columns
        # relative lengths depends on number of columns
        def calculate_column_widths(table)
          table.header_rows.map do |row|
            col_sizes = row.map do |cell|
              length = cell.text.to_s.length
              length < 8 ? 8 : length
            end

            col_spans = row.map do |cell|
              cell.styles[:colspan].to_i
            end

            avg = col_sizes.inject(1) { |sum, x| sum += x } / col_sizes.size.to_f

            rel_sizes = col_sizes.map { |size| (size/avg).ceil }

            tmp = rel_sizes.zip(col_spans)
            result = []
            tmp.each do |x|
              x.last.times { result << x.first / x.last }
            end
            result

          end
        end

        def format_table_header(table)
          self.xml.comment! 'header'
          self.xml.tag!('fo:table-header', {
            'line-height': '1.5',
            'font-size': '8pt',
            'text-align': 'left',
            'font-weight': 'bold',
            'border-color': 'gray',
            'border-width': '1.5pt',
            'border-before-style': 'solid',
            'border-after-style': 'solid'
          }) do
            table.header_rows.each do |row|
              self.xml.tag!('fo:table-row') do
                row[0..-2].each { |cell| format_cell(cell) }
                last_cell = row.last
                self.xml.tag!('fo:table-cell', {
                  'number-rows-spanned': "#{last_cell.styles[:rowspan]}",
                  'number-columns-spanned': "#{last_cell.styles[:colspan]}"
                }) do
                  self.xml.tag!('fo:block', {
                    'text-align': "right"
                  }) do
                    Text.new(self.xml).format(last_cell.text)
                  end 
                end if last_cell.text?
              end
            end

          end
        end

        def format_cell(cell)
          self.xml.tag!('fo:table-cell', {
            'number-rows-spanned': "#{cell.styles[:rowspan]}",
            'number-columns-spanned': "#{cell.styles[:colspan]}"
          }) do
            self.xml.tag!('fo:block', {
              'text-align': "#{cell.styles[:align]}"
            }) do
              # cell.text.format(self.text_formatter)
              Text.new(self.xml).format(cell.text)
            end 
          end if cell.text?
        end

        def format_table_body(table)
          self.xml.tag!('fo:table-body', {
            'font-size': '8pt',
            'line-height': '1.5',
            'text-align': 'left'
          }) do
            table.body_rows[0..-2].each_with_index do |row, index|
              self.xml.tag!('fo:table-row', {
                'text-indent': '36pt',
                'background-color': "#{(index % 2).zero? ? '#E0E0E0' : '#F5F5F5'}"
              }) do
                row.each { |cell| format_cell(cell) }
              end
            end
            self.xml.tag!('fo:table-row', {
              'text-indent': '36pt',
              'background-color': "#{((table.body_rows.size - 1) % 2).zero? ? '#E0E0E0' : '#F5F5F5'}",
              'border-color': 'gray',
              'border-width': '1pt',
              'border-after-style': 'solid'
            }) do
              table.body_rows.last.each { |cell| format_cell(cell) }
            end
          end
        end

      end
    end
  end
end
