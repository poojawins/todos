new_pigeon = {}
pigeon_data.each_pair do |key, value|
  #can puts here to see what we have
  #puts key
  #puts value 
	value.each_pair do |attribute, name_array|
    #attribute => purple, grey
    #name_array => ["Theo", "Peter Jr", "Lucky"]
      name_array.each do |name|
        new_pigeon[name] = {} unless new_pigeon[name]
        #saying if new_pigeon[name].nil?
        new_pigeon[name][:color] = [] unless new_pigeon[name][:color]
        if key == :color
          new_pigeon[name][key] << attribute
        else
          new_pigeon[name][key] 
        end

      end
    end
  end



