class User < ActiveRecord::Base
  
  has_secure_password
  validates :username, uniqueness: true
  validates :username, presence: true
  has_many :wines

  def slug
    self.username.downcase.tr("","-")
  end 

  def self.find_by_slug(slug)
    self.all.find { |instance| instance.slug == slug } 
  end 
  
end