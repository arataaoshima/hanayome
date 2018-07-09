class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
       t.string :name
       t.string :email
       t.text :book
    end
  end
end
