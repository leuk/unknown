class CreateTypes < ActiveRecord::Migration
  def self.up
    create_table :types do |t|
      t.string :title
      t.integer :groups_count
      t.integer :groups_items
      t.boolean :home_away , :default => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :types
  end
end
