class ChangeProgressToFloatOnUserProject < ActiveRecord::Migration[7.1]
  def change
    change_column :user_projects, :progress, :float
  end
end
