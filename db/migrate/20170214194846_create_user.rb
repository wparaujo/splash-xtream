class CreateUser < ActiveRecord::Migration[5.0]
  def change
  	t.string :email
  end
end
