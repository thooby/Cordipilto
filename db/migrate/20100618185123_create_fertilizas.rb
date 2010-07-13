class CreateFertilizas < ActiveRecord::Migration
  def self.up
    create_table :fertilizas do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :fertilizas
  end
end
