ActiveAdmin.register Badge do

  form do |f|
    f.inputs "New Badge" do
      f.input :name
      f.input :criteria
      f.input :description
    end
    f.inputs "Badge Image" do
      f.input :badge_image, as: :file
    end
    f.buttons
   end
  
end
