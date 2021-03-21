class AdrList < ApplicationRecord

    validates :Address, presence: true
    validates :Phone, presence: true
    validates :Name, presence: true
    validates :LastName, presence: true
    validates :email, presence: true

end
