class Color < ApplicationRecord
    has_many :RimcolorWheelsize
    has_many :Wheelsize, :through => :RimcolorWheelsize
end
