class CreateLutteurs < ActiveRecord::Migration
  def self.up
    create_table :lutteurs do |t|
      t.string :title
      t.text :content
      t.string :keywords
      t.string :meta
      t.date :birth_date
      t.string :website
      t.string :firstname
      t.string :lastname
      t.string :nickname
      t.references :ecury
      t.references :category_lutteur
      t.timestamps
    end
  end
  
  def self.down
    drop_table :lutteurs
  end
end
