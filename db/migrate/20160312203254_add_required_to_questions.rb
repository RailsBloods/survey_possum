class AddRequiredToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :required, :integer
  end
end
