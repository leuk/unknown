class CreateEcuries < ActiveRecord::Migration
  def self.up
    create_table :ecuries do |t|
      t.string :title
      t.string :name
      t.text   :content
      t.string :keywords
      t.string :meta
      t.string :website
      t.string :phone
      t.string :email
      t.string :adress
      t.string :slogan
      t.date   :created_date
      t.integer :lutteurs_count
      t.timestamps
    end
  end
  
  def self.down
    drop_table :ecuries
  end
end
