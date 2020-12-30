class Director < ApplicationRecord
  belongs_to :movie
  has_many :productions, :dependent => :destroy
  accepts_nested_attributes_for :productions

end
