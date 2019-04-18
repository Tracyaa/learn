def addition(num1, num2)
  num1 + num2
end

def subtraction(num1, num2)
  num1 - num2
end

def division(num1, num2)
  num1 / num2
end

def multiplication(num1, num2)
  num1 * num2
end

def modulo(num1, num2)
  num1 % num2
end

def square_root(num)
  Math.sqrt(num)
  # 81 --> 9*9
end

def order_of_operation(num1, num2, num3, num4)
  num1 + ((num2 * num3) / num4)
  #Hint:  __ + (( __ * __ ) / __ )
end
