class CreateCombatTypes < ActiveRecord::Migration
  def self.up
    create_table :combat_types do |t|
      t.string :title
      t.boolean :nullify
      t.timestamps
    end
  end
  
  def self.down
    drop_table :combat_types
  end
end
