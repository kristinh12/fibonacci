def iterative_fib(number)
  return nil if number < 0
  
  sequence = [0, 1]
  for x in 2..number
    sequence.push(sequence[x-1] + sequence[x-2])
  end
  return sequence[number]

end
