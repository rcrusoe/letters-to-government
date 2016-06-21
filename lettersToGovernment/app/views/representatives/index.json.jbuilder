json.array!(@representatives) do |representative|
  json.extract! representative, :id, :first_name, :last_name, :state, :party, :office, :email
  json.url representative_url(representative, format: :json)
end
