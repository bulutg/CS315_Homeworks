print("-----------pretest")
-- pretest

i = 0
while (i < 3)
do
    print(i)
    i = 1 + i
end

print("-----------posttest")
-- posttest

i = 0
repeat
    print(i)
    i = 1 + i
until (i > 2)

print("-----------break")
-- break

i = 0
while (i < 3)
do
    if (i == 2) then break end
    print(i)
    i = 1 + i
end

print("-----------breakwithgoto")
-- break with goto

i = 0
while (i < 3)
do
    if (i == 2) then goto breakwithgoto end
    print(i)
    i = 1 + i
end
::breakwithgoto::


print("-----------continuekwithgoto")
-- continue with goto
i = 0
while (i < 3)
do
    if (i == 1) then goto continuewithgoto end
    print(i)
    ::continuewithgoto::
    i = 1 + i
end
