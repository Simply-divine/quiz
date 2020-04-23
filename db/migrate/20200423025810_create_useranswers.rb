class CreateUseranswers < ActiveRecord::Migration[6.0]
  def change
    create_table :useranswers do |t|
      t.string :letter
      t.string :answer
      t.integer :question_id
      t.integer :user_id
      t.timestamps
    end
  end
end
