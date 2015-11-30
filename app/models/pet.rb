class Pet < ActiveRecord::Base
  belongs_to :color
  belongs_to :shape

  def first_name
    "Chubbyy"
  end

  def full_name
    first_name + " " + last_name
  end
end
