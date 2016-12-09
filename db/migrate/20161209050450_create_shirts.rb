class CreateShirts < ActiveRecord::Migration[5.0]
  def change
    create_table :shirts do |t|
      t.string :color
      t.integer :size
      t.integer :jamaican_id

      t.timestamps
    end
  end
end
