class AddBirthdayToTimeline < ActiveRecord::Migration[5.2]
  def change
    add_column :timelines, :birthday, :datetime
  end
end
