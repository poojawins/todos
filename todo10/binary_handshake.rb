require 'debugger'

RSpec.configure do |config|
	config.color_enabled = true
	config.tty = true
	config.formatter = :progress
end

class SecretHandshake

  attr_reader :number_string

  def initialize(number_string)
    @number_string = number_string
  end

  def index_check(number_string)
    number_string.each_char do |character|
      character[i]
    number_string[0]
    number_string[1]
    number_string[2]
    number_string[3]
    number_string[4]
  end

  def commands
    command_array = ["wink", "double blink", "close your eyes", "jump"]
    output_array = []
    if i > 4
      command_array.reverse
    end
    
    if i = 0
      output_array << 0
    if i = 1
      output_array << command_array[0]
    if i = 2  
      output_array << command_array[1]
    if i = 3  
      output_array << command_array[2]
    if i = 4 
      output_array << command_array[3]
    if
      output_array << 0
    end
  end
  output_array
end


handshake = SecretHandshake.new("1")
handshake = SecretHandshake.new("10")
handshake = SecretHandshake.new("11")
handshake = SecretHandshake.new("100")
handshake = SecretHandshake.new("1001")
handshake = SecretHandshake.new("10000")
handshake = SecretHandshake.new("10001")
handshake = SecretHandshake.new("stuff")

