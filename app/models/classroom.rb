class Classroom < ApplicationRecord
  belongs_to :grade
  has_many :student
  has_many :course_teacher_school_info
  
  enum classroom_type: {"A":1,"B":2,"C":3}

  rails_admin do
    edit do
      
      # configure :classroom_type do
      #   label "Tipo de Classe"
      # end
      # configure :grade do
      #   label "Série"
      # end
      # configure :student do
      #   label "Alunos"
      # end
      # configure :course_teacher_school_info do
      #   label "Professores"
      # end
    end
  end

  # rails_admin do
      
  #     weight 1
  #     navigation_icon 'fas fa-people-roof'
  #     list do
  #       configure :name do
  #         label 'Nome'
  #       end
  #       configure :exercise do
  #         label 'Exercicio'
  #       end
  #       configure :classroom do
  #         label 'Escola'
  #       end
  #     end
  #     edit do
  #       include_fields :grade,:name
  #       field :name do
  #         render do
  #           bindings[:view].render :partial => "classroom_partial", :locals => {:field => self, :form => bindings[:form]}
  #         end
  #       end
  #       configure :grade do
  #         label "Série"
  #         inline_add false
  #         inline_edit false
  #         partial "grade_partial" 
  #       end
  #     end
  #     export do
  #     end
  #     show do
  #     end
  # end
end
