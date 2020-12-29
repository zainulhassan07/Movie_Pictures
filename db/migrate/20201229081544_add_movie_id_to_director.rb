class AddMovieIdToDirector < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :movie_id, :integer
  end
end
