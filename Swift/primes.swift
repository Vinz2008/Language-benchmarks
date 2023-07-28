import Foundation

let start = Date().timeIntervalSince1970

var primes: [Int] = []

for i in 0...14999 {
    var factors = 0
    if (i > 1){
        for j in 1...i {
            if i % j == 0 {
                factors += 1
            }
        }
    }
    if factors == 2 {
        primes.append(i)
    }
}

for i in 0...primes.count-1 {
    print("\(primes[i]) ")
}



let time = NSDate().timeIntervalSince1970 - start

let time_seconds = time

print("Completed in: \(time_seconds)s")