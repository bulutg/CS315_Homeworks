puts '-------------pretest'
#pretest

$i = 0
while $i <3 do
  puts $i
  $i = 1 + $i
end

puts '-------------posttest'
#posttest

$i = 0
begin
  puts $i
  $i = 1 + $i
end while $i < 3

puts '-------------break'
#break

$i = 0
while $i <3 do
  if $i ==2
    break
  end
  puts $i
  $i = 1 + $i
end


puts '-------------continue'
#continue


$i = 0
while $i <3 do
  $i = 1 + $i
  if $i ==2
    next
  end
  puts $i
end