require 'teitofo/builder/article_builder'
require 'teitofo/handler/handler'
require 'teitofo/formatter/xml_formatter/article'

require 'ox'
module TeiToFo
  handler = Handler::Handler.new
  # Ox.sax_parse(handler, File.open('nested_test.xml'))
  Ox.sax_parse(handler, File.open('0033591.xml'))
  # Ox.sax_parse(handler, File.open('0129762.xml'))
  # Ox.sax_parse(handler, File.open('0129762_abstract.xml'))
  article = handler.article
  xml_formatter = Formatter::XmlFormatter::Article.new
  article.format(xml_formatter)
  puts xml_formatter.output
end
