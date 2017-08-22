class AddUserIdToMessageFolder < ActiveRecord::Migration[5.0]
  def change
    add_reference :message_folders, :user, foreign_key: true
  end
end
