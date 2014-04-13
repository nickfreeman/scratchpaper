class AddProblemToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :problem, :text
  end
end
