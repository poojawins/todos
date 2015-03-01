# instructions: implement Array.uniq

class Array

  def uniq
    unique_array = []
    self.each do |element|
      unique_array << element unless unique_array.include? element
    end
    unique_array
  end

end
