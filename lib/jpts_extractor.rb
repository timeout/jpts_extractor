require 'jpts_extractor/builder/article_builder'
require 'jpts_extractor/handler/handler'
require 'jpts_extractor/article'
require 'jpts_extractor/xml/article'

require 'ox'
require 'pathname'

module JPTSExtractor
  def self.extract(io)
    handler = Handler::Handler.new
    Ox.sax_parse(handler, io)
    handler.article
  end

  def self.output(article)
    # article = JPTSExtractor.extract(io)
    formatter = JPTSExtractor::XML::Article.new

    article.format(formatter)
    formatter.xml.target!
  end
end
