class AddTemplateToStory < ActiveRecord::Migration
  def change
  	add_column :stories, :empty_template, :text
  end
end
