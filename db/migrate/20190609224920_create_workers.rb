class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :lastname
      t.string :name
      t.date :boring
      t.date :offer
      t.string :lvl
      t.text :edu
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
