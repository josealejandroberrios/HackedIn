class LevelSerializer < ActiveModel::Serializer
  include ActionView::Helpers::SanitizeHelper

  attributes :current_level, :previous_level


  
  def current_level
    {
      name: object.name,
      positive_description: strip_tags(object.positive_description),
      negative_description: strip_tags(object.negative_description)
    }
  end

  def previous_level
    levels = Level.all
    level_search = levels.select {|level| level.id < object.id}
    level_search.reverse!
    level_search.map do |l|
      {
        name: l.name,
        positive_description: strip_tags(l.positive_description)
      }
    end
  end
end
