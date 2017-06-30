class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :rating, {:presence => true, :numericality => {only_integer: true }}
  validates :content_body, :presence => true
  validates :content_body, :length => {:minimum => 50, :maximum => 250} 

  scope :most_recent, -> { order(created_at: :desc)}

end
