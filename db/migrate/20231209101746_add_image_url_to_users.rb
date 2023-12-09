class AddImageUrlToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :image_url, :string, default: 'https://thumbs.dreamstime.com/z/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg'
  end
end
