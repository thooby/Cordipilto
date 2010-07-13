class CreateTipoSuelos < ActiveRecord::Migration
  def self.up
    create_table :tipo_suelos do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_suelos
  end
end
