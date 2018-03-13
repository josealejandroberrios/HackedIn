class EducationSerializer < ActiveModel::Serializer
  attributes :place, :qualification, :discipline, :start_date, :finish_date
end
