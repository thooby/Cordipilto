class Municipio < ActiveRecord::Base
  has_many :fincas
  has_one :openmapa
end