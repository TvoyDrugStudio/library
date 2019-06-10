class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :name
      t.string :author
      t.bigint :key
      t.date :publication
      t.date :arrival
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
