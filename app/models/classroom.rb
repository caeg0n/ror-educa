class Classroom < ApplicationRecord
  belongs_to :exercise
  belongs_to :school

  rails_admin do
      weight 1
      navigation_icon 'fas fa-people-roof'
  end
  
end
