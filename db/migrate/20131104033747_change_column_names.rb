class ChangeColumnNames < ActiveRecord::Migration
  def change
  	remove_column :stories, :second_noun
  	remove_column :stories, :third_noun
  	remove_column :stories, :second_adjective
  	add_column :stories, :noun2, :string
  	add_column :stories, :noun3, :string
  	add_column :stories, :adjective2, :string
  end
end
