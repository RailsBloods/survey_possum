class CreateLongQuestions < ActiveRecord::Migration
  def change
    create_table :long_questions do |t|
      t.integer :survey_id
      t.integer :question_number
      t.text :question
      t.text :response
      t.text :description

      t.timestamps null: false
    end
  end
end
