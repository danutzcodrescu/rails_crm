class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.text :comment
      t.string :responsible
      t.references :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
