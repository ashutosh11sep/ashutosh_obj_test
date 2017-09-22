class AddTestcategoryIdToTests < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :testcategory_id, :integer
  end
end
