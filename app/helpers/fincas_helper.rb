module FincasHelper
def add_persona_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :personas, :partial => 'persona', :object => Persona.new
    end
  end
end