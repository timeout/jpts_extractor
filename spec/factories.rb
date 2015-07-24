require 'jpts_extractor/article_part/inline_text/inline_text'
require 'jpts_extractor/article_part/inline_text/italic_text'

FactoryGirl.define do
  factory :this, class: JPTSExtractor::ArticlePart::InlineText::InlineText do
    text "This is some"
    initialize_with { new(text) }
  end

  factory :important, class: JPTSExtractor::ArticlePart::InlineText::InlineText do
    text "important"
    initialize_with { new(text) }
  end

  factory :text, class: JPTSExtractor::ArticlePart::InlineText::InlineText do
    text "text"
    initialize_with { new(text) }
  end

  factory :bold, class: JPTSExtractor::ArticlePart::InlineText::InlineText do
    text "bold"
    initialize_with { new(text) }
  end

end
