json.extract! blog, :id, :name, :url, :description, :created_at, :updated_at
json.url blog_url(blog, format: :json)
