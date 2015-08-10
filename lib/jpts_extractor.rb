require 'jpts_extractor/builder/article_builder'
require 'jpts_extractor/handler/handler'
require 'jpts_extractor/article'
require 'jpts_extractor/xml/article'
require 'jpts_extractor/txt/article'

require 'ox'
require 'pathname'

module JPTSExtractor
  def self.extract(io)
    handler = Handler::Handler.new
    Ox.sax_parse(handler, io, convert_special: true)
    handler.article
  end

  def self.output(article)
    formatter = JPTSExtractor::XML::Article.new

    article.format(formatter)
    formatter.xml.target!
  end

  def self.text(article)
    formatter = JPTSExtractor::Txt::Article.new
    article.format(formatter)
    formatter.str
  end
end

article  = JPTSExtractor.extract(File.open('spec/fixture/0123221.xml'))
puts JPTSExtractor.text(article)
