class PrimaryRecord < ActiveRecord::Base
  self.abstract_class = true
  establish_connection $POSTGRES_REPLICA
end