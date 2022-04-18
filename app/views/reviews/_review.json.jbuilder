json.extract! review, :id, :user_name, :content, :images, :created_at, :updated_at
json.url review_url(review, format: :json)
