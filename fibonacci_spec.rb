require_relative 'recursive_fib.rb'
require_relative 'iterative_fib.rb'

describe "recursive_fib" do
  it "calculates the 3rd value of the fibonacci sequence" do
    expect(recursive_fib(3)).to eq(2)
  end

  it "calculates the 0 value of the fibonacci sequence" do
    expect(recursive_fib(0)).to eq(0)
  end

  it "calculates the 1st value of the fibonacci sequence" do
    expect(recursive_fib(1)).to eq(1)
  end

  it "returns nil if given a negative number" do
    expect(recursive_fib(-1)).to eq(nil)
  end

  it "calculates the 9th value of the fibonacci sequence" do
    expect(recursive_fib(9)).to eq(34)
  end
end

describe "iterative_fib" do
  it "calculates the 3rd value of the fibonacci sequence" do
    expect(iterative_fib(3)).to eq(2)
  end

  it "calculates the 0 value of the fibonacci sequence" do
    expect(iterative_fib(0)).to eq(0)
  end

  it "calculates the 1st value of the fibonacci sequence" do
    expect(iterative_fib(1)).to eq(1)
  end

  it "returns nil if given a negative number" do
    expect(iterative_fib(-1)).to eq(nil)
  end

  it "calculates the 9th value of the fibonacci sequence" do
    expect(iterative_fib(9)).to eq(34)
  end
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end