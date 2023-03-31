class School < ApplicationRecord
  belongs_to :locality  
  # I18n.t('admin.actions.new.title', model_label: 'Escola', gender_caracter: 'a')
  # def x
  #   I18n.t('admin.actions.new.title', gender_caracter: "o")
  # end
  
  rails_admin do
    label "Escola"
    label_plural "Escolas"
    weight -1
    navigation_icon 'fas fa-school'
    edit do
      include_fields :name,:address,:locality
      configure :name do
        label "Nome"
      end
      configure :address do
        label "Endereço"
      end
      configure :locality do
        label "Localidade"
      end
      configure :modality do
        label "Modalidade"
      end
    end
    list do
      exclude_fields :created_at, :updated_at
      configure :locality do
        label "Localidade"
      end
      configure :modality do
        label "Modalidade"
      end
    end
    show do
      configure :locality do
        label "Localidade"
      end
      configure :modality do
        label "Modalidade"
      end
    end
    export do
      field :locality do
        label 'localidade'
      end
      field :modality do
        label 'modalidade'
      end
    end
    
  end

end
