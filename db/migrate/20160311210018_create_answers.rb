class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_number
      t.text :question_response
      t.integer :question_id
      t.integer :taker_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
