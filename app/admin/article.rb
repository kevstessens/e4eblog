ActiveAdmin.register Article do
  permit_params :title, :subtitle, :main_image, :date, :category_id, :body, :author_id


  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :subtitle
      f.input :body
      f.input :main_image
      f.input :date, as: :date_picker
      f.input :category, as: :select2
      f.input :author, as: :select2

    end
    f.actions
  end
end
