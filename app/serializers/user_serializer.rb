class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :first_name, :last_name, :location
  
end
