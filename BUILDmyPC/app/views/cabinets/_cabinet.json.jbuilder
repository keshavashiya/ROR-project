json.extract! cabinet, :id, :name, :cabinet_type, :manufacturer, :description, :picture, :price, :created_at, :updated_at
json.url cabinet_url(cabinet, format: :json)