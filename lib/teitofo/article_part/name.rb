module TeiToFo
  module ArticlePart
    class Name

      def initialize(surname = String.new, given_names = String.new)
        @surname, @given_names = surname, given_names
      end

      attr_accessor :surname, :given_names

      def to_s
        "#{self.given_names} #{self.surname}"
      end
    end
  end
end
