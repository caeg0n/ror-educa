class ApplicationRecord < ActiveRecord::Base
  #self.abstract_class = true
  # # to set the role for switch the database.
  # connects_to database: {
  #   writing: :primary,
  #   reading: :primary_replica
  # } 
  # establish_connection $POSTGRES_REPLICA
end
