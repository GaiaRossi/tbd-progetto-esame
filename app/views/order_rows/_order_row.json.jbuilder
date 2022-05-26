json.extract! order_row, :id, :order_id, :product_id, :quantity, :created_at, :updated_at
json.url order_row_url(order_row, format: :json)
