class MasterController < ApplicationController

def fortune_teller
  @sign_string = params.fetch("the_sign").capitalize
  sign = params.fetch("the_sign").to_sym
  all_zodiacs = Zodiac.list
  @horoscope_m = all_zodiacs.fetch(sign).fetch(:horoscope)
  
  @array_of_numbers = Array.new

  5.times do
    another_number = rand(1...100)
    
    @array_of_numbers.push(another_number)
  end
render({:template => "master_templates/master.html.erb"})
  
end
end
