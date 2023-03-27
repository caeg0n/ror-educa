class Teacher < ApplicationRecord
    rails_admin do
        weight -1
        navigation_icon 'fas fa-graduation-cap'
        list do
            configure :name do
                label "Nome"
            end
            configure :mail do
                label "E-Mail"
            end
            configure :phone do
                label "Telefone"
            end
            configure :created_at do
                hide
            end
            configure :updated_at do
                hide
            end
        end
        edit do
            configure :name do
                label "Nome"
            end
            configure :mail do
                label "E-Mail"
            end
            configure :phone do
                label "Telefone"
                html_attributes 'data-phone-mask':'true'
                #partial "phone_partial"
            end
        end
    end
end
