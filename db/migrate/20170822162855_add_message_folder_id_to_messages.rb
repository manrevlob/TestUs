class AddMessageFolderIdToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :message_folder, foreign_key: true
  end
end
