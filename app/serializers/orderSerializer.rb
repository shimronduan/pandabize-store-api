class OrderSerializer < ActiveModel::Serializer
    attributes :id, :customer, :customizations
  end
  