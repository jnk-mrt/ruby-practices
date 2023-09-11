require 'date'
require 'optparse'

opt = OptionParser.new
params = ARGV.getopts("", "y:#{Date.today.year}", "m:#{Date.today.month}")
  if params["y"]
    year = params["y"].to_i
  else
    year = day.year
  end

  if params["m"]
    mon = params["m"].to_i
  else
    mon = day.mon
  end

first_day = Date.new(year, mon, 1).wday
last_day = Date.new(year, mon, -1).day
puts "#{mon}月" "#{year}年".center(20)

week_days = ['日', '月', '火', '水', '木', '金', '土']
week_days.each do |week_day|
    print "#{week_day} "
end
print "\n"
print "   " * first_day
wday = first_day
(1..last_day).each do |date|
  print date.to_s.rjust(2) + " "
    if Date.new(year,mon,date).wday == 6                      
      print "\n"
    end
end

