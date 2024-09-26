class RemovePosterFromMovies < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :poster, :binary
  end
end
