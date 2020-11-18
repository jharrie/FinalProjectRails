class AddColumnsToAbout < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :title, :text
    add_column :abouts, :subtext, :text
    add_column :abouts, :body, :text
  end
end
