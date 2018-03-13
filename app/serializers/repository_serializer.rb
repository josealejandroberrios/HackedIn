class RepositorySerializer < ActiveModel::Serializer
  attributes :link

  def link
    "https://#{object.link}"
  end
end
