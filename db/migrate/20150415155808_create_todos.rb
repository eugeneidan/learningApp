class CreateTodos < ActiveRecord::Migration
  def change
    execute <<-SQL
  CREATE TYPE todo_status AS ENUM ('complete', 'started', 'ongoing');
SQL
    create_table :todos do |t|
      t.string :title
      t.column :status, :todo_status

      t.timestamps null: false
    end
  end
end
