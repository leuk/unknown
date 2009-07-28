class CreateGroupes < ActiveRecord::Migration
  def self.up
    create_table :groupes do |t|
      t.string :title
      t.string :name
      t.string :meta
      t.timestamps
    end
  end
  
  def self.down
    drop_table :groupes
  end
end
