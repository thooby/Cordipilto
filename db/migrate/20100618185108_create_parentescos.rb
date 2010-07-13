class CreateParentescos < ActiveRecord::Migration
  def self.up
    create_table :parentescos do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :parentescos
  end
end
