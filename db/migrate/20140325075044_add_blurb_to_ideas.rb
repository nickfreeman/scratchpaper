class AddBlurbToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :blurb, :string
  end
end
