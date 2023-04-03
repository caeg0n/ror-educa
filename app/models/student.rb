class Student < ApplicationRecord
   enum transportation: {"SIM":1,"NÃO":2}
   enum status: {"REPROVADO":1,"REPROVADO POR FALTA":2}

   
   rails_admin do
      navigation_icon 'fas fa-users'
      edit do
         include_fields :name,:birth,:inep,:transportation,:status
         configure :name do
            label "Nome"
         end
         configure :birth do
            label "Data de Nascimento"
         end
         configure :inep do
            label "INEP"
            # group :opções do 
            #    active false 
            # end
         end
         configure :transportation do
            label "Transporte Escolar"
         end
         configure :status do
            label "Situação"
         end
      end
   end

end
