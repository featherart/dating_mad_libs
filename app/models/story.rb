class Story < ActiveRecord::Base
  attr_accessible :adjective, :adjective2, :noun, :noun2, 
    :noun3, :verb_future_tense, :verb_past_tense, :proper_noun, :verb, :empty_template
  has_one :template
end
