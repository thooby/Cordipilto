class CreateTopogras < ActiveRecord::Migration
  def self.up
    create_table :topogras do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :topogras
  end
end
