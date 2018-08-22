class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state, :slope, :rating
  
end
