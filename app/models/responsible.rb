class Responsible < ApplicationRecord
  belongs_to :student

  rails_admin do
    parent "Student"
    navigation_icon 'fas fa-plus'
    list do
      configure :name do
        label "Nome"
      end
      configure :student do
        label "Aluno"
      end
      configure :phone do
        label "Telefone"
      end
      configure :created_at do
        label "Criado em"
      end
      configure :updated_at do
        hide
      end
    end
    edit do
      configure :name do
        label "Nome"
      end
      configure :student do
        label "Aluno"
      end
      configure :phone do
        label "Telefone"
        partial "responsible_phone_partial"
      end
    end
    export do
    end
  end

end
