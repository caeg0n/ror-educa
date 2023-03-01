class Locality < ApplicationRecord
    rails_admin do
        weight -3
        navigation_icon 'fas fa-map'
        # parent "School"
    end
end
