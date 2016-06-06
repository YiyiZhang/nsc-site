class AddClassStringToStaticPages < ActiveRecord::Migration
  def change
    add_column :static_pages, :class_string, :string
  end
end
