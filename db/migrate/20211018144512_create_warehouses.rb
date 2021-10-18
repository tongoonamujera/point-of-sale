class CreateWarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses do |t|
      t.string :product
      t.string :barcode
      t.string :units
      t.decimal :quantity_per_box_or_carton
      t.decimal :total_cost
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
