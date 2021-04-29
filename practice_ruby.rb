numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1]
]

lines = []
numbers.each { |arr| lines << (arr.map { |num| "*" * num }).join(" ") }

lines.each { |line| puts line }