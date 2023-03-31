class Grade < ApplicationRecord
    belongs_to :school
    belongs_to :exercise


    enum name: {"CRECHE":1,"PRÉ-ESCOLA":2,"1° ANO":3,"2° ANO":4,"3° ANO":5,
                "4° ANO":6,"5° ANO":7, "6° ANO":8, "7° ANO":9, "8° ANO":10,
                "9° ANO":11}
    
    # def title
    #     binding.pry
    # end

    # def to_s
    #     binding.pry
    # end
    # def name
    #     if !self[:name] == nil
    #         self[:name]+"/"+School.find(self.school_id).name+"/"+Exercise.find(self.exercise_id).year.to_s
    #     end
    # end

    rails_admin do
        weight -3
        navigation_icon 'fas fa-layer-group'
        edit do
            include_fields :exercise,:school,:name
            configure :name do
                label "Descrição"
                # pretty_value do
                #     "ffffff"
                # end
            end
            configure :school do
                label "Escola"
            end
            configure :exercise do
                label "Exercicio"
            end
        end
        list do
            # field :name do
            #     # pretty_value do # used in list view columns and show views, defaults to formatted_value for non-association fields
            #     #     "ffffff"
            #     # end
            # end
        end
        export do     
        end
    end
end
