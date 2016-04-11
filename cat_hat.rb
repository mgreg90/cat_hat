# Prompt: 100 cats in a row, all wearing hats
# Loop thru the cats 100 times
# first pass flip every cat's hat states (bang)
# second pass every other cat flip hat states
# third pass every third cat flip hat states
# etc until 100 passes complete

# create an array of all cats, using true to indicate hat is on
cats = []
while cats.length < 100 do
  cats.push(true)
end

# set starting variables
loop_num = 1
cat_num = 1

# loop thru cats 100 times
while loop_num <= 100 do
  # loop thru each cat in cats array
  while cat_num <= 100 do
    # if the cat's number is divisible by the loop number, flip the cat
    if cat_num % loop_num == 0 then
      cats[cat_num - 1] = !cats[cat_num - 1]
    end
    # increment cat number
    cat_num += 1
  end
  # reset cat number for next loop of all cats
  cat_num = 1
  # increment the number of loops run
  loop_num += 1
end

#p cats

# loop thru cats for printing
while cat_num <= 100 do
  # check if the cat is wearing a hat, print appropriate message.
  if cats[cat_num - 1] then
    puts "Cat \##{cat_num} is wearing a hat"
  else
    puts "Cat \##{cat_num} is not wearing a hat."
  end
  # increment cat number
  cat_num += 1
end
