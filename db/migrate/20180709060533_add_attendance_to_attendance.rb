class AddAttendanceToAttendance < ActiveRecord::Migration
  def change
    add_column :attendance, :attendance, :boolean, default: false, null: false
    add_column :attendance, :book, :text
    add_column :attendance, :created_at, :datetime
    add_column :attendance, :updated_at, :datetime
  end
end
