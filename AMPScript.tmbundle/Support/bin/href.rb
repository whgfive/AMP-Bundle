pattern5 = /<a href=[\'"]?([^\'"> ]*)[\'"]?[^>]*>/o
html = STDIN.read
count = 0 
domain = ARGV[0]

html.gsub!(pattern5) do |n|
  "<a href='http://#{domain}/?et_testid=#{count+=1}'>"
end

puts html