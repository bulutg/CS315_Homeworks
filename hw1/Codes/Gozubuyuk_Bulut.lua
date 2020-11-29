local function foo(key, value)
    -- simply prints the key-value pair
    print(key, value)
end

-- function to determine whether table has the value
local function containsValue(table, value)
   for k,v in pairs(table) do
      if v == value then 
         return true
      end
   end
   return false
end

-- Initialize
local credits = { ["CS319"] = 4, 
    ["CS315"] = 3,
    ["MATH225"] = 4,
    ["ENG401"] = 2 
    }

  
-- Get the value for a given key
print("Value for CS315 is: " .. credits["CS315"])

-- Add a new element
credits["GRA131"] = 3

-- Remove an element 
credits["ENG401"] = nil

-- Modify the value of an existing element
credits["CS315"] = 0

-- Search for the existence of a key
print(credits["CS101"] ~= nil)
print(credits["CS315"] ~= nil)

-- Search for the existence of a value
print(containsValue(credits, 9))
print(containsValue(credits, 3))

-- Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
for k, v in pairs(credits) do
    foo(k,v)
end
