//
//  FlashcardManager.swift
//  Flashcard Place
//
//  Created by James Meegan on 6/1/23.
//

import Foundation


class FlashCardManager: ObservableObject {
    @Published var flashCards: [FlashCard] = []
    
    func addFlashCard(question: String, answer: String) {
        print("I was called")
        let newFlashCard = FlashCard(question: question, answer: answer)
        flashCards.append(newFlashCard)
        print(newFlashCard)
        print(flashCards)
    }
  
    
    func deleteFlashCard(at index: Int) {
        flashCards.remove(at: index)

    }
    
    // Load and save methods...
}
