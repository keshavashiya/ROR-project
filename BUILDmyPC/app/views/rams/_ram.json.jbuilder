json.extract! ram, :id, :name, :ram_type, :manufacturer, :description, :picture, :price, :created_at, :updated_at
json.url ram_url(ram, format: :json)