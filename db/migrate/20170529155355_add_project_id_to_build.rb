class AddProjectIdToBuild < ActiveRecord::Migration[5.0]
  def change
    add_reference :builds, :project, foreign_key: true
  end
end
