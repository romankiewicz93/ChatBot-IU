struct ConversationDelegate {
    
  //Wenn die Frage "" enthält, wird Antwort "" zurückgegeben
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.contains("hallo") {
            return "Hallo, wie kann ich dir helfen?"
        } else if lowerQuestion == "angebot" {
            return "Unser special offer: Tarif Mobile L"
        } else if lowerQuestion.contains("störung") {
            return "Ich leite dich sofort an unser Supportteam weiter"
        } else if lowerQuestion.contains("vertrag") {
            return "Ich leite dich sofort an unser Vertragsteam weiter"
        } else if lowerQuestion.contains("iPhone") {
            return "Es sind gerade alle iPhone Modelle verfügbar"
        } else if lowerQuestion.contains("") {
            return "To the North!"
        } else {
            return "Das weiss ich leider nicht"
        }
    }
}
