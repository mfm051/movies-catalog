class AddPosterToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :poster, :binary
  end
end
