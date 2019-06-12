require 'benchmark'
require_relative 'generators.rb'
require_relative './lib/methods.rb'
arrays = array_generator(5000, 100000, 5000)
arrays.each do |array|
  Benchmark.bmbm do |results|
    results.report ("duplicates #{array.length}"){ 100.times {array.find_duplicates} }
    results.report ("reverse_array #{array.length}"){ 100.times {array.reverse_array} }
  end
end
integers = integer_generator(5000, 100000, 5000)
integers.each do |integer|
  Benchmark.bmbm do |results|
      results.report ("fibonacci #{integer}"){ 20.times {integer.fibonacci} }
    end
end
