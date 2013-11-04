class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.text :sentence
      t.integer :nouns
      t.integer :verbs
      t.integer :proper_nouns
      t.integer :verb_past_tense
      t.integer :verb_future_tense
      belongs_to :story, polymorphic: true
      t.timestamps
    end
  end
end
