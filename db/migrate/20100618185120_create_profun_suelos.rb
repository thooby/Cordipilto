class CreateProfunSuelos < ActiveRecord::Migration
  def self.up
    create_table :profun_suelos do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :profun_suelos
  end
end
