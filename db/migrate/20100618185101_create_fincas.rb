class CreateFincas < ActiveRecord::Migration
  def self.up
    create_table :fincas do |t|
      t.string :descripcion
      t.integer :agua_id
      t.integer :area_tot
      t.integer :area_cafe
      t.integer :area_agric
      t.integer :area_bosque
      t.integer :area_potrero
      t.integer :area_guat
      t.integer :adqui_id
      t.integer :altura
      t.integer :lat
      t.integer :lon
      t.integer :municipio_id
      t.integer :acceso_id
      t.integer :invier_acceso_id
      t.integer :verano_acceso_id
      t.integer :tipo_suelo_id
      t.integer :color_suelo_id
      t.integer :profun_suelo_id
      t.integer :topogra_id
      t.integer :fertiliza_id
      t.integer :comunidade_id

      t.timestamps
    end
  end

  def self.down
    drop_table :fincas
  end
end
