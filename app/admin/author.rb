ActiveAdmin.register Author do
  permit_params :email, :name, :main_image

  form :partial => "form"

end
