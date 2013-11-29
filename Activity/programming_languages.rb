# Organizing Nested Data

# I have a collection of Programming Languages.  

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

# I would like you to reformat the nested structure to be of the following form

# {
#   :ruby => {
#     :style => [:oo],
#     :type => "dynamic"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "dynamic"
#   }
#   etc etc
# }

new_hash = {}

languages.each do |style, style_hash|
  #:oo => { :ruby => {:type => "interpreted"}
  #style = :oo and style_hash = { :ruby => {:type => "interpreted"}
  style_hash.each do |name, type_hash|
    #name = :ruby type_hash = {:type => "interpreted"}
    new_hash[name] ||= {}
    new_hash[name][:style]||= style
    new_hash[name][:type] ||= type_hash[:type]
  end
end

p new_hash

#note: output 'style' is not in array form
#outputs:
# {
#   :ruby=>{
#   :style=>:oo, 
#   :type=>"interpreted"
#   }, 

#   :javascript=>{
#   :style=>:oo, 
#   :type=>"interpreted"
#   }, 

#   :python=>{
#   :style=>:oo, 
#   :type=>"interpreted"
#   }, 

#   :java=>{
#   :style=>:oo, 
#   :type=>"compiled"
#   }, 

#   :clojure=>{
#   :style=>:functional, 
#   :type=>"compiled"
#   }, 

#   :erlang=>{
#   :style=>:functional, 
#   :type=>"compiled"
#   }, 

#   :scala=>{
#   :style=>:functional, 
#   :type=>"compiled"
#   }
# }

