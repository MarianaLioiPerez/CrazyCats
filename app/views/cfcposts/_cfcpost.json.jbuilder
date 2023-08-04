json.extract! cfcpost, :id, :title, :description, :photo, :created_at, :updated_at
json.url cfcpost_url(cfcpost, format: :json)
