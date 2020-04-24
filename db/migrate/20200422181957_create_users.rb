
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, :default => ""
      #Ex:- :default =>''
      t.string :name, null: false, :default => ""
      #Ex:- :default =>''
      t.string :password_digest, :null => false, :default => ""
      #Ex:- :default =>''
      #Ex:- :null => false
      t.timestamps
    end
  end
end