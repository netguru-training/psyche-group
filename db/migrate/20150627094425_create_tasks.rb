class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.timestamp :deadline
      t.belongs_to :project
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
