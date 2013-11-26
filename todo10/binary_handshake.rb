class SecretHandshake

  attr_reader :number_string

  def initialize(number_string)
    @number_string = number_string
  end

  def commands
    do_array = []
    command_array = ["wink", "double blink", "close your eyes", "jump"]
    output_array = []
    number_string.each_char do |char|
      output_array << char
    end
    output_array
    # if i > 4
    #   command_array.reverse
    # end
    if output_array[-1] == "1" 
      do_array << command_array[0]
    end
    if output_array[-2] == "1" 
      do_array << command_array[1]
    end
    if output_array[-3] == "1" 
      do_array << command_array[2]
    end
    if output_array[-4] == "1"  
      do_array << command_array[3]
    end
    # if
    #   do_array << 0
    # end 
  end 
end


handshake = SecretHandshake.new["1"]
puts handshake.commands
handshake = SecretHandshake.new("10")
handshake = SecretHandshake.new("11")
handshake = SecretHandshake.new("100")
handshake = SecretHandshake.new("1001")
# handshake = SecretHandshake.new("10000")
# handshake = SecretHandshake.new("10001")
# handshake = SecretHandshake.new("stuff")

