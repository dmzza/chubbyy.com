class Pet < ActiveRecord::Base
  belongs_to :color
  belongs_to :shape
end
