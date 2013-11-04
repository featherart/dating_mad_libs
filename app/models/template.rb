class Template < ActiveRecord::Base
  attr_accessible :nouns, :proper_nouns, :sentence, :verb_future_tense, :verb_past_tense, :verbs, :adjectives
  belongs_to :story
end
