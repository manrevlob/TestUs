class CreateExecuteSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :execute_steps do |t|
      t.string :action
      t.string :expectedResult
      t.string :status

      t.timestamps
    end
  end
end
