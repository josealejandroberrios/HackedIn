class SkillSerializer < ActiveModel::Serializer
  attributes :name, :requirements
  

  def requirements
    object.requirements.map do |r|
      {
        name: r.name,
        status: r.fullfillments.map {|f| f.status}[0]
      } 
    end
  end
end
