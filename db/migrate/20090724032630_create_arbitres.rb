class CreateArbitres < ActiveRecord::Migration
  def self.up
    create_table :arbitres do |t|
      t.string :firstname
      t.string :lastname
      t.string :birthdate
      t.string :adress
      t.integer :cell_phone
      t.integer :home_phone
      t.string :email
      t.timestamps
    end
  end
  
  def self.down
    drop_table :arbitres
  end
end
