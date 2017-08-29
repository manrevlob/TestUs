class AddIsExecuteToCasePlan < ActiveRecord::Migration[5.0]
  def change
    add_column :case_plans, :isExecute, :boolean
  end
end
