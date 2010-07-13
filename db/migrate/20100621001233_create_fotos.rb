class CreateFotos < ActiveRecord::Migration
  def self.up
    create_table :fotos do |t|
      t.string :url
      t.string :titulo
      t.string :lat
      t.string :lon
      t.integer :finca_id

      t.timestamps
    end
  end

  def self.down
    drop_table :fotos
  end
end
