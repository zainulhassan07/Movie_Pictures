class CreateProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :productions do |t|
      t.integer :director_id
      t.string :name

      t.timestamps
    end
  end
end
