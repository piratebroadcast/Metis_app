class CohortIdToUsers2 < ActiveRecord::Migration
  def change
    add_column :users, :cohort_id, :integer
  end
end
