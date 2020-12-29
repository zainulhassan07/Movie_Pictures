class AddMovieIdToProduction < ActiveRecord::Migration[6.0]
  def change
    add_column :productions, :movie_id, :integer
  end
end
