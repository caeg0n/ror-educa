class Course < ApplicationRecord
    rails_admin do
        weight -1
        navigation_icon 'fas fa-book'
        list do
            configure :name do
                label "Nome"
            end
            configure :created_at do
                label "Criado em"
            end
            configure :updated_at do
                label "Atualizado em"
            end
        end
        edit do
            configure :name do
                label "Nome"
            end
        end
    end
end
