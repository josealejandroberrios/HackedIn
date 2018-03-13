class JobSerializer < ActiveModel::Serializer
  attributes :company, :position, :description, :start_date, :finish_date
end
