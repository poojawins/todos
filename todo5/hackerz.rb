the new wifi network is called def_wifi

your challenge, should you choose to accept it, will be to decrypt the wifi password, and log onto the internetz

here is the secret encoder.  using the skillz ashley "ashley stylez" williams and blake "_bblake" johnson taught you last week, hack into the internetz

def encode(password)
  pass_as_string = password.to_s
  password_array = pass_as_string.split("_")
  new_password_array = []
  new_password_array[0] = password_array.last
  new_password_array[3] = password_array.first
  new_password_array[1] = password_array[1]
  new_password_array.compact!
  joined_password = new_password_array.join(" ")
  joined_password.gsub!("e", "blake")
  joined_password.gsub!(" ", "ashley")
  joined_password
end

joined_password =  "intblakernblaketsashleythblakeashleyall"

#decoder:
def decode(joined_password)
  joined_password # = "intblakernblaketsashleythblakeashleyall"
  joined_password.gsub!("ashley", " ")
  #"intblakernblakets thblake all"
  joined_password.gsub!("blake", "e")
  #"internets the all"
  #don't need to do anything because we don't have extra spaces even though encode did joined_password = new_password_array.join(" ")
  #still "internets the all"
  new_password_array = []
  new_password_array[0] = password_array.last
  new_password_array[3] = password_array.first
  new_password_array[1] = password_array[1]
  new_password_array = pass_as_string.split("_")
  new_password_array.compact!
  #all_the_internets
  pass_as_string = password.to_s
  #password is a symbol
  #:all_the_internets
