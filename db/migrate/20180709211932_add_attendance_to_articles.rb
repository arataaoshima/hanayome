class AddAttendanceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :attendance, :boolean, default: false, null: false
    add_column :articles, :allergy, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
