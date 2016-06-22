class ChangeReceiveNewsTypeInUsers < ActiveRecord::Migration
  def up
    change_column :users, :receive_news, :boolean
  end

  def down
    change_column :users, :receive_news, :string
  end
end
