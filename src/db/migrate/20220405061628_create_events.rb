class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :training
      t.float :weight
      t.integer :set
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
