def substrings(string, substrings)
    substring_counters = {}
    substrings.length.times do |i|
        sub_count = sub_count(string, substrings[i])       
        sub_count > 0 ? substring_counters[substrings[i]] = sub_count : nil
    end
    substring_counters
end

def sub_count(string, substring)
    if !string.include? substring
        return 0
    else
        substring_counter = sub_count(string.sub(substring, " "), substring) + 1
    end
    substring_counter
end