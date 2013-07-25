class Post < ActiveRecord::Base
  attr_accessible :attachment, :message, :title, :phase_id, :project_id
  belongs_to :project
  belongs_to :phase

  default_scope order('created_at DESC')

  mount_uploader :attachment, ImageUploader

  def snippet
    message_size = 90 + rand(150)
    snippet = self.message.truncate(message_size, :separator => ' ')
    return snippet
  end
  
  def attachment_image(size)
  	if self.attachment?
  		return self.attachment_url(size)
  	else
  		random_images = [
			"http://www.dbcovers.com/imagenes/backdrops/grandes/happy_gilmore_1996//happy_gilmore_1996_1.jpg",
			"http://www.themusclecarplace.com/wp-content/uploads/2012/11/happy-gilmore.jpg",
			"http://3.bp.blogspot.com/-FBbhGnSrbRQ/TtwGcsrKiFI/AAAAAAAAAFY/XpIAJj65sFo/s1600/Happy-Gilmore-01-4.jpg",
			"http://chicago.bridgesinternational.com/assets/images/uploads/galleries/uic/chicago-poetry-calendar.jpg",
			"http://www.richard-seaman.com/USA/Cities/Chicago/Landmarks/ChicagoAtNight1.jpg",
			"http://images.wikia.com/fanfiction/images/4/4e/Youre_gonna_die_clown_-_Happy_Gilmore.jpg",
			"http://upload.wikimedia.org/wikipedia/commons/f/f4/Chicago_Bears_vs_Tennessee_Titans_11-09-08.jpg"
		]
  		random_image = random_images[self.id % 7]
  		return random_image
  	end
  end

end

