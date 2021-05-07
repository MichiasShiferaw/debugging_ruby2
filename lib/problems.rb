# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.


def largest_prime_factor(num)
    (0...num).each do |i|
        if ((num % (num-i)==0) && prime?(num-i))
            return (num-i)
        end
    end
end

def prime?(num)
    return false if num < 2
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

def unique_chars?(str)
    (0...str.length).each do |i|
        if str[i+1..-1].include?(str[i])
            return false
        end
    end
    return true
end

def dupe_indices(arr1)
    hash=Hash.new
    hash_output={}
    arr1.each_with_index do |letter, ind|
        if hash.has_key?(letter)
            hash_output[letter]=hash[letter]
            hash_output[letter]<<ind
        else
            hash[letter]=[]
            hash[letter]<<ind
        end
    end
    hash_output
end

def ana_array(arr1,arr2)
    if (arr1.length!=arr2.length)
        return false
    end
    arr1.each_with_index do |value, ind|
        if !(arr2.include?(value))
            return false
        end
    end
    arr2.each_with_index do |value, ind|
        if !(arr1.include?(value))
            return false
        end
    end
    return true
end
