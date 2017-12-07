def caesar_encode(string,offset)
  # code
    alp_array = [*('a'..'z')]
    string.split("").collect do |character|
        if character ==character.upcase && alp_array.include?(character.downcase)
            sum= ((alp_array.index(character.downcase))+offset)%26
            character = alp_array[sum].upcase
        elsif character ==character.downcase && alp_array.include?(character.downcase)
            sum= ((alp_array.index(character.downcase))+offset)%26
            character = alp_array[sum].downcase
        else
            character
        end
    end.join("")
end
# puts "What would you like to encode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)

def caesar_decode(string,offset)
  # code
    # alp_array = [*('a'..'z')]
    # string.split("").collect do |character|
    #     if character ==character.upcase && alp_array.include?(character.downcase)
    #         diff= ((alp_array.index(character.downcase))-offset)%26
    #         character = alp_array[diff].upcase
    #     elsif character ==character.downcase && alp_array.include?(character.downcase)
    #         diff= ((alp_array.index(character.downcase))-offset)%26
    #         character = alp_array[diff].downcase
    #     else
    #         character
    #     end
    # end.join("")
    caesar_encode(string,offset*-1) 
end
# puts "What would you like to decode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_decode(user_string,user_offset)


