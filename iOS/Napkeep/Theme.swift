import SwiftUI

enum Theme {
    static let accent = Color(hex: "#3B8A6E")
    static let background = Color(hex: "#0C1815")
    static let card = Color(hex: "#122822")
    static let textPrimary = Color(hex: "#E2F7EF")
    static let textSecondary = Color(hex: "#6EC7A6")

    static var titleFont: Font { .system(.title2, design: .rounded).weight(.bold) }
    static var bodyFont: Font { .system(.body, design: .rounded) }
    static var captionFont: Font { .system(.caption, design: .rounded) }
}

extension Color {
    init(hex: String) {
        let h = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: h).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255.0
        let g = Double((int >> 8) & 0xFF) / 255.0
        let b = Double(int & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
