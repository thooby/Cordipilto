class CreateAguas < ActiveRecord::Migration
  def self.up
    create_table :aguas do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :aguas
  end
end
