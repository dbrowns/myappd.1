class AddFirmToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :firm, index: true
  end
end
