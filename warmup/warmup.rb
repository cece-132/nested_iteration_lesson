# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings

  p nested_animals.flatten

# 2. Return an unnested array of animals with length >= 4

p nested_animals.flatten.map { |animal| animal if animal.to_s.length >= 4}.compact

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
hash = {}
nested_animals.flatten.each do |animal|
  hash[animal] = animal.length
end
p hash