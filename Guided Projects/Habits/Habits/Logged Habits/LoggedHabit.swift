
import Foundation

struct LoggedHabit {
    let userID: String
    let habitName: String
    let timeStamp: Date
}

extension LoggedHabit: Codable { }


