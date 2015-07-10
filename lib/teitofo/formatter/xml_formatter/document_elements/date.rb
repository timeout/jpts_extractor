require 'date'

module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_date(date)
          date.strftime("%B %e, %Y")
        end

      end
    end
  end
end
