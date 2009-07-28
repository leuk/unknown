class CreateTournois < ActiveRecord::Migration
  def self.up
    create_table :tournois do |t|
      t.string :title
      t.string :name
      t.text :content
      t.string :keywords
      t.string :meta
      t.date :start
      t.date :end
      t.string :website
      t.references :season
      t.references :promoteur
      t.references :type
      t.timestamps
    end
  end
  
  def self.down
    drop_table :tournois
  end
end
