class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :project, foreign_key: true
      t.datetime :completed_at

      t.timestamps
    end
  end
end
