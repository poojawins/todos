class SecretHandshake

  attr_reader :number_string

  def initialize(number_string)
    @number_string = number_string
  end

  def commands
    do_array = []
    command_array = ["wink", "double blink", "close your eyes", "jump"]
      
      if @number_string.length > 4
        command_array.reverse
      end
    
    do_array << command_array[0] if @number_string[-1] == "1" 
    
    do_array << command_array[1] if @number_string[-2] == "1" 
    
    do_array << command_array[2] if @number_string[-3] == "1" 
    
    do_array << command_array[3] if @number_string[-4] == "1" 

      if @number_string.length > 4
        do_array.reverse!
      end
    
    do_array

  end 

end

handshake = SecretHandshake.new("1")
handshake.commands

handshake = SecretHandshake.new("10")
handshake.commands

handshake = SecretHandshake.new("11")
handshake.commands

handshake = SecretHandshake.new("100")
handshake.commands

handshake = SecretHandshake.new("1001")
handshake.commands

handshake = SecretHandshake.new("10000")
handshake.commands

handshake = SecretHandshake.new("10001")
handshake.commands

handshake = SecretHandshake.new("stuff")
handshake.commands

