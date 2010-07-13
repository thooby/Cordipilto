class CreateNacionas < ActiveRecord::Migration
  def self.up
    create_table :nacionas do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :nacionas
  end
end
