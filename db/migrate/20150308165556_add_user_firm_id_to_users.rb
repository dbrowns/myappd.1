class AddUserFirmIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_firm_id, :integer
  end
end
