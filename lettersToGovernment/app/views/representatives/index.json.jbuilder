json.array!(@representatives) do |representative|
  json.extract! representative, :id, :first_name, :last_name, :state, :position, :party, :email, :phone_number
  json.url representative_url(representative, format: :json)
end
