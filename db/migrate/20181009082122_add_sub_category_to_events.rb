class AddSubCategoryToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :sub_category, :string
  end
end
