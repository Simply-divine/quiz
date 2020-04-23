class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :answer
      t.string :letter
      t.integer :question_id
      t.timestamps
    end
  end
end
