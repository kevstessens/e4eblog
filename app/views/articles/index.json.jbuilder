json.array!(@articles) do |article|
  json.extract! article, :id, :title, :subtitle, :main_image, :date, :category_id, :body, :author_id
  json.url article_url(article, format: :json)
end
