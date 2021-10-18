json.extract! warehouse, :id, :product, :barcode, :units, :quantity_per_box_or_carton, :total_cost, :user_id, :created_at, :updated_at
json.url warehouse_url(warehouse, format: :json)
