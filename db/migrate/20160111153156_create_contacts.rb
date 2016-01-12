class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Full_Name
      t.string :Email
      t.string :Title
      t.string :Position
      t.string :Organization

      t.timestamps null: false
    end
    add_index :contacts, :Full_Name
    add_index :contacts, :Email
  end
end
