class Work < ApplicationRecord

  #TODO double-check these validations
  has_many :votes
  validates :title, presence: true
  validates :category, presence: true

  validates :category, inclusion: { in: %w(movie book album) }

  def self.albums
    Work.where(category: "album")
  end

  def self.movies
    Work.where(category: "movie")
  end

  def self.books
    Work.where(category: "book")
  end
end
