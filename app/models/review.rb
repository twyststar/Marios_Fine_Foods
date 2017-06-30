class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :rating, :presence => true
  validates :content_body, :presence => true
end
