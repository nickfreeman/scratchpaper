class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.references :contributor, index: true
      t.text :description

      t.timestamps
    end
  end
end
