class Webcomic < ActiveRecord::Base
  attr_accessible :description, :title, :comicimage

  mount_uploader :comicimage, ComicimageUploader
end
