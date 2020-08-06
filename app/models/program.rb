class Program < ApplicationRecord
	has_many :donors, dependent: :destroy
	validates :title, presence: true
end
