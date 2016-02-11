json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :picture, :user_id, :votes
  json.url profile_url(profile, format: :json)
end
