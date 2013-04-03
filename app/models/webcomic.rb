class Webcomic < ActiveRecord::Base
  attr_accessible :description, :title, :comicimage

  mount_uploader :comicimage, ComicimageUploader

  def next
    Webcomic.where("created_at > ?", created_at).order("created_at ASC").first
  end
  
  def next?
    !Webcomic.where("created_at > ?", created_at).order("created_at ASC").empty?
  end
  
  def prev
    Webcomic.where("created_at < ?", created_at).order("created_at ASC").last
  end
  
  def prev?
    !Webcomic.where("created_at < ?", created_at).order("created_at ASC").empty?
  end

end
