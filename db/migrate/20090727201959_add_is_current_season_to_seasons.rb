class AddIsCurrentSeasonToSeasons < ActiveRecord::Migration
  def self.up
    add_column :seasons, :is_current_season, :boolean
  end

  def self.down
    remove_column :seasons, :is_current_season
  end
end
