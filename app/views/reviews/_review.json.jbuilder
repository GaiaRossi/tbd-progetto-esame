json.extract! review, :id, :text, :product_id, :created_at, :updated_at, :user_id
json.url review_url(review, format: :json)
