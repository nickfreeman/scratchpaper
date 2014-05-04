class AddIdeaToUpdate < ActiveRecord::Migration
  def change
    add_reference :updates, :idea, index: true
  end
end
