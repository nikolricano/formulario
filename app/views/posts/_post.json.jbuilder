json.extract! post, :id, :title, :content, :age, :agree, :created_at, :updated_at
json.url post_url(post, format: :json)