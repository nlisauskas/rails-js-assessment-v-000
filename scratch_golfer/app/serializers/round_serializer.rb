class RoundSerializer < ActiveModel::Serializer
  attributes :id, :score, :putts, :user_id, :course_id
  belongs_to :user
  belongs_to :course
end
