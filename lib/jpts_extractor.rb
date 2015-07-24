require 'jpts_extractor/builder/article_builder'
require 'jpts_extractor/handler/handler'

require 'ox'
require 'pathname'

module JPTSExtractor
  def self.extract(io)
    handler = Handler::Handler.new
    Ox.sax_parse(handler, io)
    handler.article
  end
end
