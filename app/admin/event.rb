ActiveAdmin.register Event do
  permit_params :start_date, :end_date, :main_image, :title, :description, :address
end
