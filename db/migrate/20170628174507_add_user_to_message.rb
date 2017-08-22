class AddUserToMessage < ActiveRecord::Migration[5.0]
  def change
    change_table :messages do |t|
      t.references :sender
      t.references :recipient
    end
  end
end
