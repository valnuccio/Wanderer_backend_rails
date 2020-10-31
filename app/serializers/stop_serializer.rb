class TourSerializer < ActiveModel::Serializer
    attributes :id, :tour, :lat, :lng
  end