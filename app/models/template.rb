class Template < ApplicationRecord

  has_many :tests, dependent: :destroy
  validates :title, presence: true, uniqueness: true
end
