class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.references :user, null: false, foreign_key: true
      t.text :detail

      t.timestamps
    end
  end
end
