class CreateReceptionists < ActiveRecord::Migration[7.1]
  def change
    create_table :receptionists do |t|

      t.timestamps
    end
  end
end
