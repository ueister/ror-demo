class Donor < ApplicationRecord
	belongs_to :program
	has_many :donations, dependent: :destroy
	validates :donor, presence: true
end
