class CourseTeacherSchoolInfo < ApplicationRecord
  belongs_to :course
  belongs_to :teacher_school_info
  
  rails_admin do
    # weight -1
    navigation_icon 'fas fa-plus'
    parent "Teacher"
    label "Atribuir Materias"
    list do
      configure :course do
        label "Materia"
      end
      configure :teacher_school_info do
        label "Professor na Escola"
      end
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
      configure :classroom_id do
        hide
      end
    end
    edit do
      configure :course do
        label "Materia"
      end
      configure :teacher_school_info do
        label "Professor na escola"
        # html_attributes id: "xxxxx"
      end
      configure :classroom_id do
        hide
      end
    end
    list do
    end
  end

end
