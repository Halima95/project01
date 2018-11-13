class Activity < ApplicationRecord
  belongs_to :place
  belongs_to :category
  # has_and_belongs_to_many :category
  #  belongs_to :city
end
