class ItemSerializer < ActiveModel::Serializer
  attributes :id, :Name, :options
  belongs_to :bicycle
end
