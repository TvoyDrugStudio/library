json.extract! user, :id, :lastname, :name, :address, :phone, :number, :building_id, :created_at, :updated_at
json.url user_url(user, format: :json)
