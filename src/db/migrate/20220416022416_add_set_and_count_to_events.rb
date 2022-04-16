class AddSetAndCountToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :set, :integer
  end
end
