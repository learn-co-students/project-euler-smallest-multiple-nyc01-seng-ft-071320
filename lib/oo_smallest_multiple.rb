# Implement your object-oriented solution here!
class SmallestMultiple

    def initialize(num)
        @num = num
    end

    def verify_factors(big_num)
        non_divisible_factors = (1..@num).filter {|n| big_num % n != 0 }
        return non_divisible_factors == []
    end

    def lcm
        multiple = 0
        found_answer = false 
        while found_answer == false
            multiple += @num
            found_answer = verify_factors(multiple)
        end
        return multiple
    end 
end