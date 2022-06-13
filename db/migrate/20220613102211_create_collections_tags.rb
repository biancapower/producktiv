class CreateCollectionsTags < ActiveRecord::Migration[7.0]
  def change
    create_table :collections_tags do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
