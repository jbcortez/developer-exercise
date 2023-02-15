class Exercise

  def self.getPunctuation(str)
    return str.match(/[[:punct:]]/).to_s
  end

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # Split string into array of words
    words = str.split(" ")
    
   # Iterate over each word in array
    words.each_with_index {
      |word, index|

      if word.length > 4
        if word[0] ==  word[0].upcase
          # If first letter is capitalized, replace with Marklar
          punctuation = self.getPunctuation(word)
          
          if punctuation.length > 0
            words[index] = 'Marklar' + punctuation
          else
            words[index] = 'Marklar'
          end
        else
          # Otherwise, replace with marklar
          punctuation = self.getPunctuation(word)
          
          if punctuation.length > 0
            words[index] = 'marklar' + punctuation
          else
            words[index] = 'marklar'
          end
        end
      end
    }

    # Join array back into string
    result = words.join(" ")
   
    return result
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    sum = 0
    fibonacci = []
    n1 = 0
    n2 = 1
  
    1.upto(nth) {
      fibonacci.push(n1)
      nextVal = n1 + n2
      n1 = n2
      n2 = nextVal
    }

    fibonacci.each {
      |n|
      if n % 2 == 0
        sum += n
      end
    }

    return sum
  end

end
