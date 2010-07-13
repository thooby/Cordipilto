class CreateAdquis < ActiveRecord::Migration
  def self.up
    create_table :adquis do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :adquis
  end
end
