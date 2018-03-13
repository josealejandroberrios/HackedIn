class LevelSerializer < ActiveModel::Serializer
  attributes :name, :positive_description, :negative_description
end
