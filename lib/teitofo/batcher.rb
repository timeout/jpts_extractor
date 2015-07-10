require 'teitofo/batch_configure'
require 'teitofo/reader/reader'
require 'teitofo/formatter/xml_formatter/article'

module TeiToFo
  class Batcher

    def initialize(batch_configure = BatchConfigure.new)
      self.batch_configure = batch_configure
      yield self.batch_configure if block_given?
    end

    attr_accessor :batch_configure

    def read_articles
      puts "corpora path: #{batch_configure.corpora_path.to_s}"
      articles = batch_configure.corpora_path.children
      articles.keep_if { |p| p.basename.to_s =~ /0[0-9]{6}/ }
    end

    def process
      self.read_articles.each do |article_dir|
        Reader::ArticleDirectory.new(article_dir)
        puts Reader.tei_path
        handler = Handler::Handler.new
        Ox.sax_parse(handler, Reader.tei_path.open)
        article = handler.article
        xml_formatter = Formatter::XmlFormatter::Article.new
        article.format(xml_formatter)
        # puts xml_formatter.output
        out_filename = Reader.tei_path.basename.to_s
        out_filename.gsub! 'xml', 'xsl'
        File.open(out_filename, 'w') { |file| file.write(xml_formatter.output) }
      end
    end

  end
end
