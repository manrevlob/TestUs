class AddSuiteIdToCase < ActiveRecord::Migration[5.0]
  def change
    add_reference :cases, :suite, foreign_key: true
  end
end
