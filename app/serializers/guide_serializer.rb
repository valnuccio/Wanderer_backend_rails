class GuideSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :location, :bio, :photo, :email, :tours

end
