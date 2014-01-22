class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :posts, :content, :post
  end
end
