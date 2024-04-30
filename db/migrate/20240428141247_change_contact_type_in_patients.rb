class ChangeContactTypeInPatients < ActiveRecord::Migration[7.1]
  def change
    change_column :patients, :Contact, :string
  end
end
