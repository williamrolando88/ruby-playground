json.extract! blog, :id, :user, :post, :created_at, :updated_at
json.url blog_url(blog, format: :json)
