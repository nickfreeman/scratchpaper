class AddSolutionToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :solution, :text
  end
end
