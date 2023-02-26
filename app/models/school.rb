class School < ApplicationRecord
  belongs_to :locality
  belongs_to :modality

  # I18n.t('admin.actions.new.title', model_label: 'Escola', gender_caracter: 'a')
  # def x
  #   I18n.t('admin.actions.new.title', gender_caracter: "o")
  # end
  
  rails_admin do
    label "Escola"
    label_plural "Escolas"
    weight 0
    edit do
      include_fields :name,:address,:locality,:modality
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
  end

end
