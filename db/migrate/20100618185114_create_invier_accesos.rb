class CreateInvierAccesos < ActiveRecord::Migration
  def self.up
    create_table :invier_accesos do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :invier_accesos
  end
end
