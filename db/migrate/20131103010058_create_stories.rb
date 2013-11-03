class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :noun
      t.string :verb
      t.string :adjective
      t.string :second_adjective
      t.string :proper_noun
      t.string :second_noun
      t.string :third_noun
      t.string :verb_future_tense
      t.string :verb_past_tense
      t.text :story
      t.timestamps
    end
  end
end
