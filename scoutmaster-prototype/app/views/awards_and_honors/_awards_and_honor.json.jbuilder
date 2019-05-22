json.extract! awards_and_honor, :id, :award_name, :description, :year, :organization, :created_at, :updated_at
json.url awards_and_honor_url(awards_and_honor, format: :json)
