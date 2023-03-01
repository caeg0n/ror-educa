class Modality < ApplicationRecord

    rails_admin do
        weight -3
        navigation_icon 'fas fa-layer-group'
        # parent "School"
        export do
            
        end
    end
end
