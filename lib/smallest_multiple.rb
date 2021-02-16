# Implement your procedural solution here!

def verify_factors(big_num, num_of_factors)
    non_divisible_factors = (1..num_of_factors).filter {|n| big_num % n != 0 }
    return non_divisible_factors == []
end

def smallest_multiple(num)
    multiple = 0
    found_answer = false 
    while found_answer == false
        multiple += num
        found_answer = verify_factors(multiple, num)
    end
    return multiple
end 