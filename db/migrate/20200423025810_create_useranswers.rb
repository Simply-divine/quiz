class CreateUseranswers < ActiveRecord::Migration[6.0]
  def change
    create_table :useranswers do |t|
      t.string :letter
      t.string :answer
      t.integer :question_id
      t.integer :user_id
      t.timestamps
    end
    add_index :useranswers, :user_id, name: "index_useranswers_on_user_id"
    add_index :useranswers, :question_id, name: "index_useranswers_on_question_id"
  end
end
