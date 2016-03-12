class AddPublishToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :publish, :integer
  end
end
