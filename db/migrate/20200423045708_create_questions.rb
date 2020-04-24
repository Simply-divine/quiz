class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :subgenre, foreign_key: true
      t.string :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.boolean :check1
      t.boolean :check2
      t.boolean :check3
      t.boolean :check4
      t.string :image
      t.timestamps
    end
  end
end
