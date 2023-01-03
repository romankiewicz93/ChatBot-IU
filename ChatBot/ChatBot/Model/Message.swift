import Foundation

enum MessageType {
    case question
    case answer
}

//Message Structure
struct Message {
    let text: String
    let type: MessageType
}

// Time based welcome line
let openingLine = Message(text: "Guten Abend, mein Name ist Sam", type: .answer)
