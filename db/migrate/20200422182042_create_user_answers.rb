class CreateUserAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :user_answers do |t|
      t.string :letter
      t.string :answer
      t.integer :question_id
      t.integer :user_id
      t.timestamps
    end
    add_index :user_answers, :user_id, name: "index_user_answers_on_user_id"
    add_index :user_answers, :question_id, name: "index_user_answers_on_question_id"
  end
end
