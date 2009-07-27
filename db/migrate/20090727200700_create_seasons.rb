class CreateSeasons < ActiveRecord::Migration
  def self.up
    create_table :seasons do |t|
      t.string :title
      t.text :content
      t.string :keywords
      t.string :meta
      t.date :start
      t.date :end
      t.timestamps
    end
  end
  
  def self.down
    drop_table :seasons
  end
end
