class Usuario < ApplicationRecord
    has_and_belongs_to_many :grupos

end
