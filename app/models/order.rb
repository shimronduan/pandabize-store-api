class Order < ApplicationRecord
    belongs_to :bicycle
    has_many :customizations
end
