class AddRoleIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :role, foreign_key: true
    #add_foreign_key :users, :roles
  end
end
