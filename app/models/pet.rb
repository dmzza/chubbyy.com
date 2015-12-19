class Pet < ActiveRecord::Base
  belongs_to :color
  belongs_to :shape

  def first_name
    "Chubbyy"
  end

  def full_name
    first_name + " " + last_name
  end

  def expression_id
    3 # lacking a model for now, default to the highest possible ID
  end

  def lucky_number
    binary_string = ("%05b" % color_id) + ("%03b" % shape_id) + ("%02b" % expression_id)
    binary_string.to_i(2)
  end
end
