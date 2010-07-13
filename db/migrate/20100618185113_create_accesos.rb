class CreateAccesos < ActiveRecord::Migration
  def self.up
    create_table :accesos do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :accesos
  end
end
