class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.boolean :active
      t.boolean :public
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
