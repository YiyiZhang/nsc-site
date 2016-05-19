class AddImageListToStaticPages < ActiveRecord::Migration
  def change
    add_column :static_pages, :image_names, :json
  end
end
