module TeiToFo
  module Reader
    def self.tei_path= (path)
      @@tei_path = path
    end

    def self.tei_path
      @@tei_path
    end

    def self.graphics_directory= (path)
      @@graphics_directory = path
    end

    def self.graphics_directory
      @@graphics_directory
    end

    class ArticleDirectory

      def initialize(article_dir)
        @article_dir = article_dir
        Reader.tei_path = self.article_dir + 'tei' + tei_filename
        Reader.graphics_directory = self.article_dir + 'graphics'
      end

      attr_reader :article_dir

      private
      def tei_filename
        self.article_dir.basename.to_s + '.xml'
      end
    end
  end
end
