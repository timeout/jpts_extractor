module JPTSExtractor
  class Article
    def initialize
    end

    attr_accessor :front, :body, :back

    def format(formatter)
      formatter.format(self)
    end

  end
end
