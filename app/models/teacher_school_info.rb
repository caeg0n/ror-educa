class TeacherSchoolInfo < ApplicationRecord
  belongs_to :school
  belongs_to :teacher

  def title
    teacher_name = Teacher.find(self.teacher_id).name
    school_name = School.find(self.school_id).name
    teacher_name + " na " + school_name
  end

  rails_admin do
    weight -1
    navigation_icon 'fas fa-plus'
    parent "School"
    label "Atribuir professores"
    edit do
      configure :school do
        label "Escola"
      end
      configure :teacher do
        label "Professor"
      end
    end
  end

end
