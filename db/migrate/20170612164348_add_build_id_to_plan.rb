class AddBuildIdToPlan < ActiveRecord::Migration[5.0]
  def change
    add_reference :plans, :build, foreign_key: true
  end
end
