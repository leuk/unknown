class AddAttachmentsSnapshotToArenes < ActiveRecord::Migration
  def self.up
    add_column :arenes, :snapshot_file_name, :string
    add_column :arenes, :snapshot_content_type, :string
    add_column :arenes, :snapshot_file_size, :integer
    add_column :arenes, :snapshot_updated_at, :datetime
  end

  def self.down
    remove_column :arenes, :snapshot_file_name
    remove_column :arenes, :snapshot_content_type
    remove_column :arenes, :snapshot_file_size
    remove_column :arenes, :snapshot_updated_at
  end
end
