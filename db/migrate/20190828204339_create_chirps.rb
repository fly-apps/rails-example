class CreateChirps < ActiveRecord::Migration[5.2]
  def change
    create_table :chirps do |t|
      t.text :text
      t.text :author

      t.timestamps
    end
  end
end
