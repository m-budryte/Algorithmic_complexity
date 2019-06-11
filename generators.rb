def array_generator(lower, upper, step)
  array_of_arrays = []
  (lower..upper).step(step) do |n|
    array_of_arrays << (1..n).to_a.shuffle
  end
  array_of_arrays
end
