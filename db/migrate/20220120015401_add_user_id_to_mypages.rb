class AddUserIdToMypages < ActiveRecord::Migration[6.0]
  def change
    add_column :mypages, :user_id, :integer
  end
end
