class TeacherSchoolInfo < ApplicationRecord
  belongs_to :school
  belongs_to :teacher

  def title
    teacher_name = Teacher.find(self.teacher_id).name if self.teacher_id
    school_name = School.find(self.school_id).name if self.school_id
    teacher_name + " na " + school_name if self.teacher_id && self.school_id
  end

  rails_admin do
    weight -1
    navigation_icon 'fas fa-plus'
    parent "School"
    label "Atribuir Professores"
    list do
      configure :school do
        label "Escola"
      end
      configure :teacher do
        label "Professor"
      end
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
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
