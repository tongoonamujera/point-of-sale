json.extract! store, :id, :product, :barcode, :price, :user_id, :created_at, :updated_at
json.url store_url(store, format: :json)
