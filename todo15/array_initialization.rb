# prereqs: initializing, methods, blocks, yield, arrays

# EXAMPLES:
#   
# array_init(2) { |i| i.to_s }    # => [ '0' , '1' ]
# array_init { |i| i.to_s }       # => [ '0' , '1' , '2' , '3' , '4' ]
# array_init 2                    # => [ '0' , '100' ]
# array_init                      # => [ '0' , '100' , '200' , '300' , '400' ]
# array_init { 'hi }              # => [ 'hi' , 'hi' , 'hi' , 'hi' , 'hi' ]
# array_init 10 do |i|            # => [ 0 , -5 , 400 , -15 , 800 , -25 , 1200 , -35 , 1600 , -45 ]
#   if i % 2 == 0
#     i * 200
#   else
#     i * -5
#   end
# end

def array_init(size=5)
  if block_given?
    array = Array.new(size) {|i| yield i}
  else
    array = Array.new(size) { |i| (i * 100).to_s } 
  end
end

