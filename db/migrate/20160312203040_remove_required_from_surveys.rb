class RemoveRequiredFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :required, :boolean
  end
end
