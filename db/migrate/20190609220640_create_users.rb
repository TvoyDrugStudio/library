class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :name
      t.text :address
      t.bigint :phone
      t.bigint :number
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
