class RemoveContentFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :content, :integer
  end
end
