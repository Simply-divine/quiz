class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :cqscore, :integer, :default => 0
      #Ex:- :default =>''
      add_column :users, :score, :integer, :default => 0
      #Ex:- :default =>''

      add_column :users, :presentquizid, :integer, :default => 0
      #Ex:- :default =>''

      add_column :users, :presentquizqueid, :integer, :default => 0
      #Ex:- :default =>''
      add_column :users, :reset_password_token, :string, :null => false, :default => ""
      #Ex:- :default =>''
      add_column :users, :reset_password_sent_at, :datetime
      add_column :users, :remember_created_at, :datetime
      add_column :users, :sign_in_count, :integer, :default => 0
      #Ex:- :default =>''
      add_column :users, :current_sign_in_at, :datetime
      add_column :users, :last_sign_in_at, :datetime
      add_column :users, :current_sign_in_ip , :string, :null => false,  :default => ""
      #Ex:- :default =>''
      #Ex:- :null => false
      add_column :users, :last_sign_in_ip , :string, :null => false, :default => ""
      #Ex:- :default =>''
      #Ex:- :null => false
  end
end
