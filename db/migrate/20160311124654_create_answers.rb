class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_number
      t.string :question_response
      t.integer :survey_id
      t.integer :taker_id

      t.timestamps null: false
    end
  end
end
