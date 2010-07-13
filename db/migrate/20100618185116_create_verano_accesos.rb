class CreateVeranoAccesos < ActiveRecord::Migration
  def self.up
    create_table :verano_accesos do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :verano_accesos
  end
end
