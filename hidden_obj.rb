class HiddenObj
  attr_reader :hidden_word, :word

  def initialize(hidden_word)
    @hidden_word = hidden_word
    @word = ""
    initialise_word_to_stars
  end


  def initialise_word_to_stars
    num_chars = @hidden_word.length
    while num_chars > 0
        @word += "*"
        num_chars -= 1
    end
  end

  def check_letter(letter_to_check)
   if @hidden_word.include? letter_to_check
      return true
    else
      return false
    end
  end

  def add_letter(letter_to_check)
    hidden_letters = @hidden_word.split('')
    word_chars = @word.split('')
    counter = 0

    for letter in hidden_letters
       if letter == letter_to_check
         word_chars[counter] = letter_to_check
       end
       counter += 1
   end

   @word = word_chars.join()

   return @word
 end

 def have_won
    if @word == @hidden_word
      return true
    else
      return false
    end
  end

end
