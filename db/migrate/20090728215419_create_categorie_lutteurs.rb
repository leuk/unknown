class CreateCategorieLutteurs < ActiveRecord::Migration
  def self.up
    create_table :categorie_lutteurs do |t|
      t.string :title
      t.integer :min_weight
      t.integer :max_weight
      t.integer :lutteurs_count
      t.timestamps
    end
  end
  
  def self.down
    drop_table :categorie_lutteurs
  end
end
