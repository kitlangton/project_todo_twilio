class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.date :completion_date

      t.timestamps null: false
    end
  end
end
