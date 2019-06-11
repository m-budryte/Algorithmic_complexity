require 'benchmark'
require_relative 'generators.rb'
input = array_generator(50000, 1000000, 50000)
input.each do |array|
  Benchmark.bm do |results|
    results.report ("last #{array.length}"){ array.last }
    results.report ("reverse #{array.length}"){ array.reverse }
    results.report ("shuffle #{array.length}"){ array.shuffle }
    results.report ("sort #{array.length}"){ array.sort }
  end
end
