json.extract! tournament, :id, :name, :max_people, :date, :location, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
