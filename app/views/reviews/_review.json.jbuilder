json.extract! review, :id, :user_id, :reviewer, :content, :rating, :reply_content, :created_at, :updated_at
json.url review_url(review, format: :json)
