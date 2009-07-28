class AddContentAndKeywordsToGroupes < ActiveRecord::Migration
  def self.up
    add_column :groupes, :content, :text
    add_column :groupes, :keywords, :string
  end

  def self.down
    remove_column :groupes, :keywords
    remove_column :groupes, :content
  end
end
