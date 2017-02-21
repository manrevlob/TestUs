class AddRowsInZone < ActiveRecord::Migration[5.0]
  def self.up
    # Zone.create :name => "User"
    # Zone.create :name => "Project"
    # Zone.create :name => "Suite"
    # Zone.create :name => "Case"
    # Zone.create :name => "Build"
    # Zone.create :name => "Plan"
    # Zone.create :name => "Execute"
    # Zone.create :name => "Platform"
    # Zone.create :name => "Keyword"
  end

  def self.down
    Zone.delete_all
  end
end
