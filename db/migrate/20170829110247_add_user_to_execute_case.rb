class AddUserToExecuteCase < ActiveRecord::Migration[5.0]
  def change
    add_reference :execute_cases, :user, foreign_key: true
  end
end
