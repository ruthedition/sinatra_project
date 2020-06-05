class User < ActiveRecord::Base
  
  has_secure_password
  validates :username, uniqueness: true
  validates :username, presence: true
  has_many :wines

  def slug
    self.name.downcase.tr("","-")
  end 

  def find_by_slug(slug)
    self.all.find do |instance|
      instance.slug == slug
    end 
  end 
end