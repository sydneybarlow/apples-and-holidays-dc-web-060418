require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ":"
      holiday.each do |x,y|
        new_x = x.to_s.split("_")
        new_x.each do |word|
          word.capitalize!
        end  
      puts "  " + new_x.join(" ") + ": " + y.join(", ")
    end
  end
end

#.split string into an array 
#.to_s symbol into a string

# ["emperor", "joshua", "abraham", "norton"].inject do |full_name, name|
#   "#{full_name.capitalize} #{name.capitalize}"
# end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday_name, items|
      binding.pry
      if items.include?("BBQ")
       return holiday_name
     end
    end   
  end   
end

# contacts.each do |person, data|
  
#   data.each do |attribute, value|
 
#     if attribute == :favorite_icecream_flavors
#       value.each do |flavor|
#         puts "#{flavor}"
#       end
#     end
#   end
# end

