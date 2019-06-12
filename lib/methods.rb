class Array
  def find_duplicates
    duplicates = []
    clean_array = []
    self.each do |word|
      clean_array.include?(word) ? duplicates << word : clean_array << word
    end
    return 'no duplicates' if duplicates.empty?
    return duplicates unless duplicates.empty?
  end

  def reverse_array
    new_array = []
    while self.length > 0 do
      new_array << self.pop
    end
    new_array
  end
end

class Integer
  def fibonacci
    i = 0
    array = [i]
    return array if self == 1
    array << 1
    return array if self == 2
    while array.length < self do
      new_number = (array.last + array[-2])
      array << new_number
    end
    array
  end
end
