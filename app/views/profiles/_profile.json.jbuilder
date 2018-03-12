json.extract! profile, :id, :user_id,  :avatar, :about, :country, :level_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
