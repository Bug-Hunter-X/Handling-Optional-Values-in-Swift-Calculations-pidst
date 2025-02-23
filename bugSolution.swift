func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

// Improved Handling of Optional Values
func calculateAreaWithOptional(width: Double?, height: Double?) -> Double? {
    guard let width = width, let height = height else {
        return nil
    }
    return width * height
}

// Safe unwrapping with nil coalescing
func calculateAreaSafely(width: Double?, height: Double?) -> Double {
    return (width ?? 0.0) * (height ?? 0.0)
}

let area2 = calculateAreaWithOptional(width: 10, height: nil)
print(area2) // Output: nil

let safeArea = calculateAreaSafely(width: 10, height: nil) //Safe unwrapping with nil coalescing operator
print(safeArea) // Output: 0.0

let safeArea2 = calculateAreaSafely(width: nil, height: nil)
print(safeArea2) //Output: 0.0