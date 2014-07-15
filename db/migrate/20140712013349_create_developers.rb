class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :age
      t.string :details
      t.string :stock
      t.string :skills

      t.timestamps
    end
  end
end
