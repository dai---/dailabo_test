json.array!(@items) do |item|
  json.extract! item, :id, :name, :value, :item_group_id
  json.url item_url(item, format: :json)
end
