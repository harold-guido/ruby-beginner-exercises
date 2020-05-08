def caesar_cipher(message_string, shift_int = 0)
    character_array = message_string.split("")
    encrypted_character_array = []
    character_array.length.times do |i|
        if /[a-z]/i =~ character_array[i]
            character_code = character_array[i].bytes.join("").to_i
            encrypted_character_array.push(encrypt_character(character_code, shift_int.to_i, character_code >= 65 && character_code <= 90 ? 65 : 97, character_code >= 65 && character_code <= 90 ? 90 : 122))
        else
            encrypted_character_array.push(character_array[i])
        end
    end
    encrypted_message = encrypted_character_array.join("")
    encrypted_message
end

def encrypt_character(character_code, shift_int, char_range_start, char_range_end)
    reduced_shift_int = shift_int % 26 
    character_code + reduced_shift_int > char_range_end ? ((char_range_start - 1) + (character_code + reduced_shift_int - char_range_end)).chr : (character_code + reduced_shift_int).chr
end
