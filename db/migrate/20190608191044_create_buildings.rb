class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.bigint :number
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end
