class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :product
      t.string :barcode
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
