class CreateAlfabes < ActiveRecord::Migration
  def self.up
    create_table :alfabes do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :alfabes
  end
end
