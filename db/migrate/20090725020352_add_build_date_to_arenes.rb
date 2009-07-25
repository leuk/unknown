class AddBuildDateToArenes < ActiveRecord::Migration
	
# Added content column to arbitres recorset !! Wasnn't the purpose of this migration but needed in this app	
  def self.up
    add_column :arenes, :build_date, :date
    add_column :arbitres, :content, :text
  end

  def self.down
    remove_column :arenes, :build_date
    remove_column :arbitres, :content
  end
end
