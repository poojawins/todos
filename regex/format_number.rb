# Write a method `format` for the class integer that converts the number to a
# string and adds commas at the appropriate places


class Integer

  def format
    to_s.gsub((d{3}), ",")
  end

end

