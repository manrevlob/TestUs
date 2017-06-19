class AddCaseIdToStep < ActiveRecord::Migration[5.0]
  def change
    add_reference :steps, :case, foreign_key: true
  end
end
