class Wine < ActiveRecord::Base
  belongs_to :country
  belongs_to :user
  validates :country, presence: true
end

