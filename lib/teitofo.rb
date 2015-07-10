require 'teitofo/builder/article_builder'
require 'teitofo/handler/handler'
require 'teitofo/formatter/xml_formatter/article'

require 'teitofo/batch_configure'
require 'teitofo/batcher'

require 'ox'
require 'pathname'

module TeiToFo
  # handler = Handler::Handler.new
  # Ox.sax_parse(handler, File.open('nested_test.xml'))
  # Ox.sax_parse(handler, File.open('0033591.xml'))
  # Ox.sax_parse(handler, File.open('0129762.xml'))
  # Ox.sax_parse(handler, File.open('0129762_abstract.xml'))
  # article = handler.article
  # xml_formatter = Formatter::XmlFormatter::Article.new
  # article.format(xml_formatter)
  # puts xml_formatter.output

  batch = Batcher.new do |config|
    # config.corpora_path = Pathname.new('/home/joe/documents/corpora')
    config.corpora_path = Pathname.new('corpora')
  end
  batch.read_articles
  batch.process

  puts "Reader.tei_path: #{Reader.tei_path}"
end
