class CreateBuilds < ActiveRecord::Migration[5.0]
  def change
    create_table :builds do |t|
      t.boolean :active
      t.boolean :isOpen
      t.string :name
      t.text :description
      t.date :releaseDate

      t.timestamps
    end
  end
end
