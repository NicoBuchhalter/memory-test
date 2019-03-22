class Template < ApplicationRecord

  validates :title, presence: true, uniqueness: true
end
