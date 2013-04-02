class AddComicimageToWebcomics < ActiveRecord::Migration
  def change
    add_column :webcomics, :comicimage, :string
  end
end
