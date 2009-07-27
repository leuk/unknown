class AddAttachmentsFlyerToSeasons < ActiveRecord::Migration
  def self.up
    add_column :seasons, :flyer_file_name, :string
    add_column :seasons, :flyer_content_type, :string
    add_column :seasons, :flyer_file_size, :integer
    add_column :seasons, :flyer_updated_at, :datetime
  end

  def self.down
    remove_column :seasons, :flyer_file_name
    remove_column :seasons, :flyer_content_type
    remove_column :seasons, :flyer_file_size
    remove_column :seasons, :flyer_updated_at
  end
end
