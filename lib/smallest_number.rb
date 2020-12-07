class SmallestNumber
  def calculate_smallest(limit)
    dividers = (1...limit)
    value = limit
    is_not_all_divisible = true
    smallest_number_divisible = 0

    while is_not_all_divisible do
      dividers.each do |divider|
        if value % divider == 0
          is_not_all_divisible = false
          smallest_number_divisible = value
        else
          is_not_all_divisible = true
          value += 1
          break
        end
      end
    end

    value
  end
end
