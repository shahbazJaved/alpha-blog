class AddColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :description, :text #add_column to table, table name, atribute name, attribute type
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
