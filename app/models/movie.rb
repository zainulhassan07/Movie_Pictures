class Movie < ApplicationRecord
  has_many :watchlists, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_one :director, :dependent => :destroy
  accepts_nested_attributes_for :director
  validates :title, :length, presence: true,
                    length: { minimum: 3 }

  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets
  def images=(files = [])
    assets.create(image: f)
  end


end
