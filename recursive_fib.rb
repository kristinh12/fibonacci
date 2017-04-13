def recursive_fib(number)
  return nil if number < 0

  if number == 0
    return 0
  elsif number == 1
    return 1
  else
    return recursive_fib(number-1) + recursive_fib(number-2)
  end
end