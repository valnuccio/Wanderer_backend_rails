class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :first_name, :last_name, :location, :img
  has_many :favorites
  

  # def tourInfo
  #   self.object.favorites.map do |favorite|
  #     {name: favorite.tour.name, id: favorite.tour.id}
  #   end

  # end

end
