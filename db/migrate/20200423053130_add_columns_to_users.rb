class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cqscore, :integer
    add_column :users, :score, :integer
    
    add_column :users, :presentquizid, :integer

    add_column :users, :presentquizqueid, :integer
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime
    add_column :users, :remember_created_at, :datetime
    add_column :users, :sign_in_count, :integer
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime
    add_column :users, :current_sign_in_ip , :string
    add_column :users, :last_sign_in_ip , :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
      
    
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")

  end
end
