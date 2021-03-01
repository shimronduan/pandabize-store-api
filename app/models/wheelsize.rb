class Wheelsize < ApplicationRecord
    has_many :RimcolorWheelsize
    has_many :Color, :through => :RimcolorWheelsize
end
