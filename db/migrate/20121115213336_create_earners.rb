class CreateEarners < ActiveRecord::Migration
  def change
    create_table :earners do |t|

      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
