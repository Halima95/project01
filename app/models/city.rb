class City < ApplicationRecord
    has_many :places
    has_many :activities, through: :places
end
