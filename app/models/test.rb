class Test < ApplicationRecord
  belongs_to :template
  belongs_to :user, optional: true
end
