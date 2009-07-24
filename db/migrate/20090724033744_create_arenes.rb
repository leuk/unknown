class CreateArenes < ActiveRecord::Migration
  def self.up
    create_table :arenes do |t|
      t.string :title
      t.text :content
      t.string :keywords
      t.string :meta
      t.integer :capacity
      t.string :location
      t.timestamps
    end
  end
  
  def self.down
    drop_table :arenes
  end
end
