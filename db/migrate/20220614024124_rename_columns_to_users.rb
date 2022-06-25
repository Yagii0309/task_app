class RenameColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :email, :startdate
    rename_column :users, :age, :enddate
    rename_column :users, :introduction, :allday
  end
end
