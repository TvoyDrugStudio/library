class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.date :give
      t.date :giveback

      t.timestamps
    end
  end
end
