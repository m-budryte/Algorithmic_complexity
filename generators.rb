def array_generator(lower, upper, step)
  array_of_arrays = []
  (lower..upper).step(step) do |n|
    array_of_arrays << (1..n).to_a.shuffle.map {|number| ["word", "another word", "my name", "makers"].sample}
  end
  array_of_arrays
end

def integer_generator(lower, upper, step)
  array_of_integers = []
  (lower..upper).step(step) do |n|
    array_of_integers << n
  end
  array_of_integers
end
