class AddAttachmentsFlyerToTournoi < ActiveRecord::Migration
  def self.up
    add_column :tournois, :flyer_file_name, :string
    add_column :tournois, :flyer_content_type, :string
    add_column :tournois, :flyer_file_size, :integer
    add_column :tournois, :flyer_updated_at, :datetime
  end

  def self.down
    remove_column :tournois, :flyer_file_name
    remove_column :tournois, :flyer_content_type
    remove_column :tournois, :flyer_file_size
    remove_column :tournois, :flyer_updated_at
  end
end
