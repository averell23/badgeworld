ActiveAdmin.register Earner do
  
  form do |f|
    f.inputs "Earner Details" do
      f.input :name
      f.input :email
    end
    f.inputs "badges" do
      f.input :badges, as: :check_boxes, label: ''
    end
    f.buttons
  end

end
