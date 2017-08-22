class CreateMessageFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :message_folders do |t|
      t.string :name
      t.boolean :system

      t.timestamps
    end
  end
end
