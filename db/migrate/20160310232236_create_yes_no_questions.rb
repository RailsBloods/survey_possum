class CreateYesNoQuestions < ActiveRecord::Migration
  def change
    create_table :yes_no_questions do |t|
      t.integer :survey_id
      t.integer :question_number
      t.text :question
      t.boolean :response
      t.text :description

      t.timestamps null: false
    end
  end
end
