class CreatePromoteurs < ActiveRecord::Migration
  def self.up
    create_table :promoteurs do |t|
      t.string :title
      t.text :content
      t.string :keywords
      t.string :meta
      t.string :company_name
      t.string :website
      t.integer :phone
      t.integer :fax
      t.string:email
      t.integer :tournois_count , :default => 0
      t.timestamps
    end
  end
  
  def self.down
    drop_table :promoteurs
  end
end
