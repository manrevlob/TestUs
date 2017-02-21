class CreateManages < ActiveRecord::Migration[5.0]
  def change
    create_table :manages do |t|
      t.boolean :canCreate
      t.boolean :canRead
      t.boolean :canUpdate
      t.boolean :canDelete

      t.timestamps
    end
  end
end
