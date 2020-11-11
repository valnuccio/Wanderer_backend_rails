class TourSerializer < ActiveModel::Serializer
    attributes :id, :stops, :guide, :name, :img, :sound_file
  end