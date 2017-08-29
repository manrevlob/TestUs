class CreateExecuteCases < ActiveRecord::Migration[5.0]
  def change
    create_table :execute_cases do |t|
      t.string :title
      t.string :description
      t.string :status
      t.float :duration

      t.timestamps
    end
  end
end
