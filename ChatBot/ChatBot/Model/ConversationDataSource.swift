import Foundation

class ConversationDataSource {
    // Anzahl Fragen
    var messageCount: Int {
        return messages.count
    }

    var messages = [openingLine]

    // Füge Frage dem Array hinzu
    func add(question: String) {
        let message = Message(
            text: question,
            type: .question)
        messages.append(message)
    }

    // Füge Antwort dem Array hinzu
    func add(answer: String) {
        let message = Message(
            text: answer,
            type: .answer)
        messages.append(message)
    }

    // Index
    func messageAt(index: Int) -> Message {
        return messages[index]
    }
}
