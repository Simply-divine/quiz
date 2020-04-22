class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.boolean :active
      t.string :answer
      t.string :letter
      t.timestamps
    end
  end
end
