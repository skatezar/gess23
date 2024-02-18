class AddDetailsToEmail < ActiveRecord::Migration[7.0]
  def change
    add_column :emails, :user_email, :string
    add_column :emails, :phone, :string
    add_column :emails, :content_of_email, :string
  end
end
