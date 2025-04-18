class Ficha < ApplicationRecord
   has_many :aprendices, dependent: :destroy 
end
