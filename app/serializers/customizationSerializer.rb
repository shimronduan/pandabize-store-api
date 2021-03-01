class CustomizationSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :option
  end
  