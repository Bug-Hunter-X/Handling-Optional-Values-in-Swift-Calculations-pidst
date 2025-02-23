func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

// Uncommon Error: Unexpected nil value

func calculateAreaWithOptional(width: Double?, height: Double?) -> Double? {
    guard let width = width, let height = height else {
        return nil
    }
    return width * height
}

let area2 = calculateAreaWithOptional(width: 10, height: nil)
print(area2) // Output: nil

// Another example demonstrating unwrapping safely
let width: Double? = 10.0
let height: Double? = 5.0

let safeArea = calculateAreaWithOptional(width: width, height: height) ?? 0.0 //Safe unwrapping with nil coalescing operator
print(safeArea) // Output: 50.0

let widthNil: Double? = nil
let heightNil: Double? = nil

let safeArea2 = calculateAreaWithOptional(width: widthNil, height: heightNil) ?? 0.0
print(safeArea2) //Output: 0.0