class ChangeDataStartdateToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :startdate, :date
  end
end
