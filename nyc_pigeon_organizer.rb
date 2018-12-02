require "pry"


# delete_if for reference
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}




def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |attribute, pigeon|
      # binding.pry
      i = 0
      while i < data.length
        pigeon_list = pigeon_list.merge({pigeon[i] => {:color => [], :gender => [], :lives=> []}})
        # binding.pry
        i +=1
      end
    end
  end
  pigeon_list.delete_if { |key, value| key == nil }
  # binding.pry
  data.each do |key, value|
    # binding.pry
    pigeon_list.each do |pigeon, attribute|
      # binding.pry
      value.each do |trait, pigeon_array|
        # binding.pry
        if pigeon_array.any? {|word| word == pigeon}
          attribute[key] << trait.to_s
        end
      end
    end
  end
  pigeon_list
end
