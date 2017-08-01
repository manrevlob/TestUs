class AddForeignKeyToCasePlans < ActiveRecord::Migration[5.0]
  def change
    add_reference :case_plans, :case, foreign_key: true
    add_reference :case_plans, :plan, foreign_key: true
    add_reference :case_plans, :user, foreign_key: true, optional: true
  end
end
