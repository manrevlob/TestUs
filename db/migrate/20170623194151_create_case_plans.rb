class CreateCasePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :case_plans do |t|

      t.timestamps
    end
  end
end
