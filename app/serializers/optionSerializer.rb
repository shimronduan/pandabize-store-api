class OptionSerializer < ActiveModel::Serializer
    attributes :id, :Name
    belongs_to :item
end
  