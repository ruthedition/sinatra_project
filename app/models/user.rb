class User < ActiveRecord::Base
  has_secure_password
  has_many :wines
  validates :username, uniqueness: true

  def slug
    self.name.downcase.tr("","-")
  end 

  def find_by_slug(slug)
    self.all.find do |instance|
      instance.slug == slug
    end 
  end 
end