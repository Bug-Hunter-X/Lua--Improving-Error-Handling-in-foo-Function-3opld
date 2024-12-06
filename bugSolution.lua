local function foo(x)
  if x == nil then
    error("x cannot be nil; please provide a numerical value.", 2)
  elseif type(x) ~= 'number' then
    error("x must be a number.", 2)
  end
  return x + 1
end

local y = foo(nil)
print(y)  --This line won't execute due to the error

--Example with error handling
local y, err = pcall(foo, nil)

if not y then
  print("Error:", err)
end

y, err = pcall(foo, 5)
print(y) --Output: 6