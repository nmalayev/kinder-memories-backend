class CreateTimelines < ActiveRecord::Migration[5.2]
  def change
    create_table :timelines do |t|
      t.string :name
      t.datetime :birthday

      t.timestamps
    end
  end
end
