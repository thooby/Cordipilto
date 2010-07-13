class CreateOpenmapas < ActiveRecord::Migration
  def self.up
    create_table :openmapas do |t|
      t.string :codigo_html
      t.integer :municipio_id

      t.timestamps
    end
  end

  def self.down
    drop_table :openmapas
  end
end
