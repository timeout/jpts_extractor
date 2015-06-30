require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/article_part/inline_text/italic_text'

FactoryGirl.define do
  factory :this, class: TeiToFo::ArticlePart::InlineText::InlineText do
    text "This is some"
    initialize_with { new(text) }
  end

  factory :important, class: TeiToFo::ArticlePart::InlineText::InlineText do
    text "important"
    initialize_with { new(text) }
  end

  factory :text, class: TeiToFo::ArticlePart::InlineText::InlineText do
    text "text"
    initialize_with { new(text) }
  end

  factory :bold, class: TeiToFo::ArticlePart::InlineText::InlineText do
    text "bold"
    initialize_with { new(text) }
  end

end
