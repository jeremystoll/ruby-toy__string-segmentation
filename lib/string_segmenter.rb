 require_relative "dictionary.rb" 

class StringSegmenter

def check_against_dictionary
    
    @word_to_test = @resting_arr.join 

  if 
    valid_word? && @skip == 0
    @words_arr << @word_to_test
    @resting_arr = []
           
  elsif 
    valid_word? && @skip > 0
    @skip -= 1
 
  end
  
end


def segment_string
 
  @str = 'bluestdiamond'
  @str_arr = @str.split(//)
  @resting_arr = []
  @words_arr = []
  @skip = 0
  @index_of_last_found_word = 0
  
 @str_arr.length.times do
       @working_str_arr = @str_arr[@index_of_last_found_word..-1]
       
        @working_str_arr.each do |x|
        @resting_arr << x
        
        check_against_dictionary
          

        end
       

        if 
          @resting_arr.empty?
          return @words_arr
        
        elsif 
          !@resting_arr.empty?
          @resting_arr = []
          @skip += 1         
          @words_arr.pop
          @index_of_last_found_word = @words_arr.join.split(//).length 
          
        end

  end 
     
end  
end