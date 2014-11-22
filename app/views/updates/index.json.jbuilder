json.array!(@updates) do |update|
  json.extract! update, :id, :phone, :message
  json.url update_url(update, format: :json)
end
