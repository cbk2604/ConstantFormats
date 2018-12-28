import UIKit

struct StaticConstants {
    static var baseURL = "www.google.co.in"
}

class StaticConstantClass {
    let baseURL = "www.google.co.in"
}

struct StaticComputedConstants {
    static var baseURL: String {
        return "www.google.co.in"
    }
}

struct Constants {
    let baseURL = "www.google.co.in"
}

struct ConstantComputed {
    var baseURL: String {
        return "www.google.co.in"
    }
}

struct ConstantMethods {
    func getBaseURL() -> String {
        return "www.google.co.in"
    }
}

enum Constant: String {
    case baseURL = "www.google.co.in"
}

print("Memory for stored property: \(MemoryLayout<Constants>.size)")
print("Memory for function: \(MemoryLayout<ConstantComputed>.size)")
print("Memory for computated property: \(MemoryLayout<ConstantMethods>.size)")
print("Memory for static stored property: \(MemoryLayout<StaticConstants>.size)")
print("Memory for static computed property: \(MemoryLayout<StaticComputedConstants>.size)")
print("Memory for enum value: \(MemoryLayout<Constant>.size)")
print("Memory for class value: \(MemoryLayout<StaticConstantClass>.size)")
var startTime: CFAbsoluteTime!
var endTime:CFAbsoluteTime!
startTime = CFAbsoluteTimeGetCurrent()
print(Constants().baseURL)
endTime = CFAbsoluteTimeGetCurrent()
print("Execution time for retrieve stored property value \(endTime - startTime)")
startTime = CFAbsoluteTimeGetCurrent()
print(ConstantMethods().getBaseURL())
endTime = CFAbsoluteTimeGetCurrent()
print("Execution time for retrieve value from function \(endTime - startTime)")
startTime = CFAbsoluteTimeGetCurrent()
print(ConstantComputed().baseURL)
endTime = CFAbsoluteTimeGetCurrent()
print("Execution time for retrieve computed property value \(endTime - startTime)")
startTime = CFAbsoluteTimeGetCurrent()
print(StaticConstants.baseURL)
endTime = CFAbsoluteTimeGetCurrent()
print("Execution time for retrieve static stored property value \(endTime - startTime)")

startTime = CFAbsoluteTimeGetCurrent()
print(StaticComputedConstants.baseURL)
endTime = CFAbsoluteTimeGetCurrent()
print("Execution time for retrieve static computed property value \(endTime - startTime)")

startTime = CFAbsoluteTimeGetCurrent()
print(Constant.baseURL.rawValue)
endTime = CFAbsoluteTimeGetCurrent()
print("Execution time for retrieve enum raw value \(endTime - startTime)")

startTime = CFAbsoluteTimeGetCurrent()
print(StaticConstantClass().baseURL)
endTime = CFAbsoluteTimeGetCurrent()
print("Execution time for retrieve class stored property value \(endTime - startTime)")
