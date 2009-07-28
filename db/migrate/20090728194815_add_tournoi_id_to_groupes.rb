class AddTournoiIdToGroupes < ActiveRecord::Migration
  def self.up
    add_column :groupes, :tournoi_id, :integer
  end

  def self.down
    remove_column :groupes, :tournoi_id
  end
end
