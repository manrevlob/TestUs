class AddTimeEstimatedToCase < ActiveRecord::Migration[5.0]
  def change
    add_column :cases, :timeEstimated, :text
  end
end
