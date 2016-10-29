json.extract! dive, :id, :date, :time, :duration, :depth, :dive_type, :dive_buddy, :location, :rating, :image_URL, :created_at, :updated_at
json.url dive_url(dive, format: :json)