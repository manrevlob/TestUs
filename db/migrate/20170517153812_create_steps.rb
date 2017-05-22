class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.string :action
      t.string :expectedResult

      t.timestamps
    end
  end
end
