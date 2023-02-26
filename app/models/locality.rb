class Locality < ApplicationRecord
    rails_admin do
        navigation_icon 'fas fa-map'
        parent "School"
    end
end
