class RemoveRequiredFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :required, :boolean
  end
end
