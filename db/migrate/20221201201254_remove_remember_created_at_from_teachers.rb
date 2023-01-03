class RemoveRememberCreatedAtFromTeachers < ActiveRecord::Migration[7.0]
  def change
    remove_column :teachers, :remember_created_at, :string
  end
end
