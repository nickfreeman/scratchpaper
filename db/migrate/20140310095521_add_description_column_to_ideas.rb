class AddDescriptionColumnToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :description, :text
  end
end
