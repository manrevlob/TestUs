class AddIdsToManages < ActiveRecord::Migration[5.0]
  def change
    add_reference :manages, :role, foreign_key: true
    add_reference :manages, :zone, foreign_key: true
  end
end
