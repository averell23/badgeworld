class AddActivationCodeToAssertion < ActiveRecord::Migration
  def change
    add_column :assertions, :activation_code, :string
  end
end
