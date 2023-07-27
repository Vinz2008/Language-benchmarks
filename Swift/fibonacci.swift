import Foundation


func fib(n: Int) -> Int {
  if n <= 1 { return n }
  return fib(n: n - 1) + fib(n: n - 2)
}

let start = Date().timeIntervalSince1970


for i in 1...50 {
    print("\(i) \(fib(n: i))")
}



let time = NSDate().timeIntervalSince1970 - start

let time_seconds = time

print("Completed in: \(time_seconds)s")