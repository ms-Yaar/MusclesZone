class Admin < ApplicationRecord
    has_many :members
    has_many :trainers
    has_many  :swappers
    has_many  :equipments

end
