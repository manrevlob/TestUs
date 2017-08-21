class CreateExecutes < ActiveRecord::Migration[5.0]
  def change
    create_table :executes do |t|
      t.string :summary
      t.date :date
      t.boolean :result
      t.decimal :duration, :precision => 10, :scale => 2
      t.string :status

      t.timestamps
    end
  end
end
