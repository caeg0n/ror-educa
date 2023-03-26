class CourseTeacherSchoolInfo < ApplicationRecord
  belongs_to :course
  belongs_to :teacher_school_info


  rails_admin do
    # weight -1
    navigation_icon 'fas fa-plus'
    parent "Teacher"
    label "Atribuir materias"
    edit do
      configure :course do
        label "Materia"
      end
      configure :teacher_school_info do
        label "Professor na escola"
        html_attributes id: "xxxxx"
      end
    end
    list do
    end
  end

end
