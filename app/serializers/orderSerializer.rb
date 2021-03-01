class OrderSerializer < ActiveModel::Serializer
    attributes :id, :customer, :bicycle, :customizations
  end
  