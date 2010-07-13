class Finca < ActiveRecord::Base
  has_many :personas, :dependent => :destroy
  has_many :fotos, :dependent => :destroy
  validates_presence_of :descripcion
  validates_associated :personas
  belongs_to :agua
  belongs_to :municipio
  belongs_to :acceso
  belongs_to :invier_acceso
  belongs_to :verano_acceso
  belongs_to :tipo_suelo
  belongs_to :color_suelo
  belongs_to :profun_suelo
  belongs_to :topogra
  belongs_to :fertiliza
  belongs_to :comunidade
  belongs_to :adqui
  def new_persona_attributes=(persona_attributes)
    puts "%%%%%%%%%%%%%%%"
    persona_attributes.each do |attributes|
      personas.build(attributes)
    end
    puts "@@@@@@@@@@@@@@@@@"
    p personas
    puts "================="
  end
  
  after_update :save_personas

  def existing_persona_attributes=(persona_attributes)
    personas.reject(&:new_record?).each do |persona|
      attributes = persona_attributes[persona.id.to_s]
      if attributes
        persona.attributes = attributes
      else
        personas.delete(persona)
      end
    end
  end

  def save_personas
    personas.each do |persona|
      persona.save(false)
    end
  end

  
end