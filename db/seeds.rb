# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  # t.string   "noun"
  #   t.string   "verb"
  #   t.string   "adjective"
  #   t.string   "proper_noun"
  #   t.string   "verb_future_tense"
  #   t.string   "verb_past_tense"
  #   t.text     "story"
  #   t.datetime "created_at",        :null => false
  #   t.datetime "updated_at",        :null => false
  #   t.string   "noun2"
  #   t.string   "noun3"
  #   t.string   "adjective2"

# 1, 2, 3 => nouns
# 4 => verb
# 5, 6 => adjectives
# 7 => proper_noun
# 8 => verb_future_tense
# 9 => verb_past_tense

Template.create([{ sentence: "I know 5 1s are a no-no, but I am oddly 9 by the sight of my own 2s.", nouns: 2, adjectives: 1, verb_past_tense:1 }, 
				 { sentence: "There\'s no such thing as another 5 Friday night when your hobbies are 1, and 2, and your role model is 7.", nouns: 2, adjectives: 1, proper_nouns: 1 },
				 { sentence: "My last partner told me I was very 5 1 with my 2. Like, I\'m some kind of 7, lol!", nouns: 2, proper_nouns: 1, adjectives: 1 },
				 { sentence: "My hobbies include 1. Sometimes I pretend I am a 6 2 who performs 3 like 7.", nouns: 3, proper_nouns: 1, adjectives: 1 },
				 { sentence: "Right now I\'m not looking for anything 5 but I hope to 8 some day with the right 1.", nouns: 1, adjectives: 1, verb_future_tense: 1 },
				 { sentence: "My weekends are booked with so many 5 1s and 6 2s, but somehow I still make time for dating!", nouns: 2, adjectives: 2 },
				 { sentence: "On my fetish list there are a bunch of 5 1s that I would prefer to 4 in person.", nouns: 1, adjectives: 1, verbs: 1 },
				 { sentence: "If you like my profile 4 me your 1 and and I will get back to you if/when I feel the 5 2.", nouns: 2, adjectives: 1, verbs: 1 },
				 { sentence: "My 5 job keeps me really busy, but I still make time to 4 my 1 and my 2.", nouns: 2, verbs: 1, adjectives: 1 },
				 { sentence: "Basically I'm a 7, who loves 5 1s and to 4 2s, lol! Hit me if u want to know more.", nouns: 2, verbs: 1, proper_nouns: 1, adjectives: 1 }
				 ])







