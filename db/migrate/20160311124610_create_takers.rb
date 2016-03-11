class CreateTakers < ActiveRecord::Migration
  def change
    create_table :takers do |t|
      t.integer :age
      t.string :gender

      t.timestamps null: false
    end
  end
end
