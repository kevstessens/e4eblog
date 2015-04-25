json.array!(@authors) do |author|
  json.extract! author, :id, :name, :email, :main_image
  json.url author_url(author, format: :json)
end
