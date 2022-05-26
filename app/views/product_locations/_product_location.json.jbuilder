json.extract! product_location, :id, :product_id, :warehouse_id, :quantity, :created_at, :updated_at
json.url product_location_url(product_location, format: :json)
