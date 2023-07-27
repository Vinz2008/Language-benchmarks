import Foundation

let start = Date().timeIntervalSince1970


let num = 2000000000

for i in 1...num+1 {
    if num % i == 0 {
        print("\(i) is a factor of \(num)")
    }
}

let time = NSDate().timeIntervalSince1970 - start

let time_seconds = time

print("Completed in: \(time_seconds)s")