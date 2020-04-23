class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :, :column_type, :column_options
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
