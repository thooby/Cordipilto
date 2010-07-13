class CreateColorSuelos < ActiveRecord::Migration
  def self.up
    create_table :color_suelos do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :color_suelos
  end
end
