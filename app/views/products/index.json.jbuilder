json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :store_id
  json.url product_url(product, format: :json)
end
