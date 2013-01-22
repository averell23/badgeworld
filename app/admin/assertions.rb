ActiveAdmin.register Assertion do

  form do |f|
    f.inputs "Badge Details" do
      f.input :badge
      f.input :activation_code
      f.input :earner
    end
    f.buttons
  end
  
end
