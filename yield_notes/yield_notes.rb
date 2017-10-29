def unicorn(word)
  puts word
end


# unicorn("one"+"horn")

def horse(block_variable_1)
  yield(block_variable_1)
end




# p horse(3) { |num| num * 2 }

class String

  def first_letter
    self[0]
  end

end

# p "bob".first_letter
# p "nintendo".first_letter
# p "chicago".first_letter

class Array
  def my_each
     self.length.times do |index|
      yield(self[index])
    end
  end
end

["a","b","c","d","e"].my_each do |letter|
  puts letter
end