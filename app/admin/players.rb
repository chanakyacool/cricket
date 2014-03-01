ActiveAdmin.register Player do
   form do |f|
        f.inputs "Details" do
          f.input :playername
          
          f.input :team # don't forget this one!
         
        end
    end
end
