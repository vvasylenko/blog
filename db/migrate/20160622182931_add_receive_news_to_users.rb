class AddReceiveNewsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :receive_news, :string
  end
end
