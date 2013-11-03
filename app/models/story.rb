class Story < ActiveRecord::Base
  attr_accessible :adjective, :second_adjective, :noun, :second_noun, :third_noun, :verb_future_tense, :verb_past_tense, :proper_noun, :verb
  has_one :template
end
