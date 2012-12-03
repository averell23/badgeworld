class CreateAssertions < ActiveRecord::Migration
  def change
    create_table :assertions do |t|
      t.references :earner
      t.references :badge

      t.timestamps
    end
  end
end
