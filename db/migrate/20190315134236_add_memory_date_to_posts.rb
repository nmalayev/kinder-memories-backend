class AddMemoryDateToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :memory_date, :datetime
  end
end
