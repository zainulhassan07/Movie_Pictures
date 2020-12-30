class RemoveDirectorIdFromMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :director_id, :integer
  end
end
