class Option < ApplicationRecord
    belongs_to :item
    has_many :linkages
    has_many :options, through: :linkages
end
