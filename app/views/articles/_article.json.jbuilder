json.extract! article, :id, :title, :content, :draft, :user_id, :category_ids, :created_at, :updated_at
json.url article_url(article, format: :json)
