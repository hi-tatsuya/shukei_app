class RemoveUserNameFromMikomis < ActiveRecord::Migration[6.1]
  def change
    remove_column :mikomis, :user_name, :string
  end
end
