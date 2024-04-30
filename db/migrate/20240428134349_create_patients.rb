class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :Name
      t.integer :Age
      t.string :Gender
      t.integer :Contact
      t.datetime :Visited_at

      t.timestamps
    end
  end
end
