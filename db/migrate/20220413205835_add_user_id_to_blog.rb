class AddUserIdToBlog < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :user, index: true
  end
end
