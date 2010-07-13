class CreateComunidades < ActiveRecord::Migration
  def self.up
    create_table :comunidades do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :comunidades
  end
end
