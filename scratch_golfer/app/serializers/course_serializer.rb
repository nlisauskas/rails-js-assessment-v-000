class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state, :slope, :rating
  has_many :users
end
