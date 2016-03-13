class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.integer :question_number
      t.text :question_text
      t.text :description
      t.string :question_type

      t.timestamps null: false
    end
  end
end
