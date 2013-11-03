class AddAdjectiveToTemplate < ActiveRecord::Migration
  def change
  	add_column :templates, :adjectives, :integer
  end
end
