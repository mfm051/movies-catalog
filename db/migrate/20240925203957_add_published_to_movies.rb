class AddPublishedToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :published, :boolean, default: true
  end
end
