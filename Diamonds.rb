# © Taha Daneshmand - github.com/taha-daneshmand/code-golf_solutions

(1..9).each do |m|
  (1..m).each do |n|
    print " " * (10 - n)
    (1..n).each { |i| print i }
    (2..n).each { |i| print n - i + 1 }
    puts
  end

  (1..m).each do |n|
    n = m - n
    print " " * (10 - n)
    (1..n).each { |i| print i }
    (2..n).each { |i| print n - i + 1 }
    puts
  end
end
