require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
    #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas] = supply
  holiday_supplies[:winter][:new_years] = supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  holiday_hash[:winter].values.flatten


end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ":"
  holiday.each do |holiday_name, supplies|
    holiday_array = holiday_name.to_s.split("_")
    holiday_array.each do |i|
      i.capitalize!
      end

    puts "  " + holiday_array.join(" ") + ": " + supplies.join(", ")


      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_w_bbq_array = []
  holiday_hash.each do |season, holiday|
    binding.pry


  #   if holiday_hash[season][holiday].include?("BBQ")
  #     holiday_w_bbq_array << holiday
  #   end
  # end
  #   holiday_w_bbq_array

  holiday.each do |holiday_name, supplies|
    if supplies.include?("BBQ")
      holiday_w_bbq_array << holiday_name

      end

    end

  end
holiday_w_bbq_array
end
