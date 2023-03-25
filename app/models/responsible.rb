class Responsible < ApplicationRecord
  belongs_to :student

  rails_admin do
    parent "Student"
    navigation_icon 'fas fa-plus'
    export do
    end
  end

end
