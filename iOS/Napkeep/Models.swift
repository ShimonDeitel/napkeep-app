import Foundation

struct Nap: Identifiable, Codable, Equatable {
    let id: UUID
    var createdAt: Date
    var start: Date
    var end: Date

    init(id: UUID = UUID(), createdAt: Date = Date(), start: Date = Date(), end: Date = Date()) {
        self.id = id
        self.createdAt = createdAt
        self.start = start
        self.end = end
    }
}
