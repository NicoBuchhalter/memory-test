class TestSerializer < ActiveModel::Serializer
  attributes :id, :evaluation, :correct_words
  has_one :template
  has_one :user
end
