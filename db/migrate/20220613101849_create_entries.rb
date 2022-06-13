class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.datetime :due_date
      t.datetime :resurface_date
      t.integer :entry_type
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
