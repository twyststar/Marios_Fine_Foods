class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :description, :presence => true
  validates :country, :presence => true

  scope :most_recent, -> { order(created_at: :desc).limit(3)}
  scope :by_country, -> { order(country: :asc)}

  def average_rating
    rate = 0
    self.reviews.each do |rev|
      rate += rev.rating
    end
    rate / self.reviews.length
  end

end
