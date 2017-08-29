class AddExecuteCaseToExecuteStep < ActiveRecord::Migration[5.0]
  def change
    add_reference :execute_steps, :execute_case, foreign_key: true
  end
end
