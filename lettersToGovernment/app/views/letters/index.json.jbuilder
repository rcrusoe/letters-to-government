json.array!(@letters) do |letter|
  json.extract! letter, :id, :title, :subject, :body
  json.url letter_url(letter, format: :json)
end
