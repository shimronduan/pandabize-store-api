class Item < ApplicationRecord
    has_many :options
    belongs_to :bicycle
end
