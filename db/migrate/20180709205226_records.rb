class Records < ActiveRecord::Migration
  def change
    drop_table :attendance
  end
end
