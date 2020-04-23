class CreateSubgenres < ActiveRecord::Migration[6.0]
  def change
    create_table :subgenres do |t|
      t.string :name
      t.references :genre, foreign_key: true
      t.timestamps
    end
  end
end
