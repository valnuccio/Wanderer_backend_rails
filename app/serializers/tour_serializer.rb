class TourSerializer < ActiveModel::Serializer
    attributes :id, :stops, :guide, :name
  end