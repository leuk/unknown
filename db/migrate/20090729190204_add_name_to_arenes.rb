class AddNameToArenes < ActiveRecord::Migration
  def self.up
    add_column :arenes, :name, :string
  end

  def self.down
    remove_column :arenes, :name
  end
end
