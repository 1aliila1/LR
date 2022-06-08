
def findEqualDigits(array)
    actualArray = Array.new
    for element in array    
        if(element % 2 == 0)
            actualArray.push(element)
        end
    end
    return actualArray;
end
 
def findNotEqualDigits(array)
    actualArray = Array.new
    for element in array    
        if(element % 2 != 0)
            actualArray.push(element)
        end
    end
    return actualArray;
end

def sumDigit(digit)

    arrayOfDigits = digit
    sum = 0
    while(digit >= 1)
        sum += digit % 10
        digit /= 10;
    end

    return sum
end

def printArray(array)
    puts 'Вывод массива'
    for element in array
        print(element.to_s + ' ')
    end
    puts
end

arrayOfDigits = [1, 2, 10, 15, 20]

(printArray arrayOfDigits)
puts 'В массиве найдены четные элементы'
printArray(findEqualDigits(arrayOfDigits))
puts 'В массиве найдены нечетные элементы'
printArray(findNotEqualDigits(arrayOfDigits))

puts 'Сумма элементов числа 1820'
puts sumDigit(1234560)