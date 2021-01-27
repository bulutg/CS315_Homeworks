print("------------------pretest")
# pre test
i = 0
while i < 3:
    print(i)
    i += 1

print("------------------posttest")

# post test

i = 0
while True:
    print(i)
    i += 1
    if not i < 3:
        break

print("------------------break")

# break

i = 0
while i < 3:
    print(i)
    if i == 1:
        break
    i += 1

print("------------------continue")

# continue

i = 0
while i < 3:
    i += 1
    if i == 2:
        continue
    print(i)
