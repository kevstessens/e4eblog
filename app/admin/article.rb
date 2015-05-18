ActiveAdmin.register Article do
  permit_params :title, :subtitle, :main_image, :date, :category_id, :body, :author_id

  form :partial => "form"

end
