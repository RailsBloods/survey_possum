class AddPublishToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :publish, :boolean
  end
end
