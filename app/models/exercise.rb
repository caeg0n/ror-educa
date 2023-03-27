class Exercise < ApplicationRecord

rails_admin do
    weight -3
    navigation_icon 'fas fa-calendar'
    list do
        configure :year do
            label "Ano"
        end
        configure :created_at do
            label "Criado em"
        end
        configure :updated_at do
            label "Atualizado em"
        end
    end
    edit do
        configure :year do
            label "Ano"
        end
    end
    export do
    end
end

end
