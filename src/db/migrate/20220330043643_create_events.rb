class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :training
      t.integer :set
      t.text :memo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
