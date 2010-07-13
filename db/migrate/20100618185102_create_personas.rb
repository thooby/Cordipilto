class CreatePersonas < ActiveRecord::Migration
  def self.up
    create_table :personas do |t|
      t.integer :finca_id
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.date :fecha_nac
      t.integer :genero_id
      t.integer :alfabe_id
      t.integer :naciona_id
      t.string :direccion
      t.integer :profesion_id
      t.integer :parentesco_id
      t.boolean :cabeza_familia

      t.timestamps
    end
  end

  def self.down
    drop_table :personas
  end
end
