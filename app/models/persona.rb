class Persona < ActiveRecord::Base
  belongs_to :finca
  validates_presence_of :nombre1
  belongs_to :genero 
  belongs_to :alfabe   
  belongs_to :naciona 
  belongs_to :profesion 
  belongs_to :parentesco 
end