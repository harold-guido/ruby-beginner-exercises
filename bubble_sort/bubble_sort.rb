def bubble_sort(num_array)
    array_after_pass = []

    (num_array.length).times do |i|

        (num_array.length - 1).times do |j|
            num_one = j == 0 ? num_array[j] : array_after_pass[j]
            num_two = num_array[j + 1]

            check_pair(num_one, num_two).each_with_index do |num, i| 
                if i == 0 && j != 0 
                    array_after_pass[j] = num 
                else
                    array_after_pass.push(num)
                end 
            end
        end

        array_after_pass == num_array ? break : 
        num_array = array_after_pass
        array_after_pass = []

    end 

    num_array

end

def check_pair(num_1, num_2)
    if num_1 > num_2
        num_temp = num_1
        num_1 = num_2
        num_2 = num_temp
    end

    new_pair = [num_1, num_2]
    new_pair
end

p bubble_sort([4,3,78,2,0,2])