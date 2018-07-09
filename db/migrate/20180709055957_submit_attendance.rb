class SubmitAttendance < ActiveRecord::Migration
  def change
    create_table :attendance do |t|
       t.string :name
       t.string :email
       end
  end
end


