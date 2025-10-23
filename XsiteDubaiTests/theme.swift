import SwiftUI

struct Theme {
    static let primary = Color.black
    static let accent = Color.white
    static let gradient = LinearGradient(
        colors: [Color.black, Color.gray.opacity(0.8)],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
}
