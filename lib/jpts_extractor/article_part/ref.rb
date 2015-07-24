module JPTSExtractor
  module ArticlePart
    class Ref

      attr_accessor :publication_type, :source, :article_title, :volume,
        :year, :month, :day, :fpage, :lpage, :editor_names, :author_names, :issue

      def source?
        not self.source.nil?
      end

      def article_title?
        not self.article_title.nil?
      end

      def volume?
        not self.volume.nil?
      end

      def year?
        not self.year.nil?
      end

      def month?
        not self.month.nil?
      end

      def day?
        not self.day.nil?
      end

      def fpage?
        not self.fpage.nil?
      end

      def lpage?
        not self.lpage.nil?
      end

      def issue?
        not self.issue.nil?
      end

      def add_editor_name(name)
        @editor_names ||= Array.new
        @editor_names << name
      end

      def editor_names?
        not @editor_names.nil?
      end

      def add_author_name(name)
        @author_names ||= Array.new
        @author_names << name
      end

      def author_names?
        not @author_names.nil?
      end

      def format(ref_formatter)
        ref_formatter.format(self)
      end

      def to_s
        output = "publication type: #{self.publication_type}\n"
        output += "source: #{self.source}\n" if source?
        output += "article_title: #{self.article_title}\n" if article_title?
        output += "volume: #{self.volume}\n" if volume?
        output += "issue: #{self.issue}\n" if issue?
        output += "year: #{self.year}\n" if year?
        output += "month: #{self.month}\n" if month?
        output += "day: #{self.day}\n" if day?
        output += "fpage: #{self.fpage}\n" if fpage?
        output += "lpage: #{self.lpage}\n" if lpage?
        output += "editors: #{self.editor_names.map {|name| name.to_s}.join(', ')}\n" if editor_names?
        output += "authors: #{self.author_names.map {|name| name.to_s}.join(', ')}\n" if author_names?
        output
      end
    end
  end
end
