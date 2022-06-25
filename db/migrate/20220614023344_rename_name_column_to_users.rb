class RenameNameColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :title
  end
end
