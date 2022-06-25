class ChangeDataEnddateToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :enddate, :date
  end
end
