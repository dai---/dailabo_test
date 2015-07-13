json.array!(@apps) do |app|
  json.extract! app, :id, :name, :store_id, :banner_url
  json.url app_url(app, format: :json)
end
