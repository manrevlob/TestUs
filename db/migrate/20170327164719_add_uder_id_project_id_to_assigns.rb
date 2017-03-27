class AddUderIdProjectIdToAssigns < ActiveRecord::Migration[5.0]
  def change
    add_reference :assigns, :user, foreign_key: true
    add_reference :assigns, :project, foreign_key: true
  end
end
