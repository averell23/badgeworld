class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.string :criteria
      t.string :description
      t.string :badge_image

      t.timestamps
    end
  end
end
