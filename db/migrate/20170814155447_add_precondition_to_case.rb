class AddPreconditionToCase < ActiveRecord::Migration[5.0]
  def change
    add_column :cases, :precondition, :text
  end
end
