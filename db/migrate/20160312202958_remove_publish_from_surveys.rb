class RemovePublishFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :publish, :boolean
  end
end
