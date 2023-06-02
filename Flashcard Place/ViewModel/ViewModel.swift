//
//  ViewModel.swift
//  Flashcard Place
//
//  Created by James Meegan on 6/1/23.
//

import Foundation

class BottomAppBarViewModel: ObservableObject {
    func button1Tapped() {
        // Handle button 1 action
    }
    
    func button2Tapped() {
        // Handle button 2 action
    }
    
    func button3Tapped() {
        // Handle button 3 action
    }
}

class FlashCardViewModel: ObservableObject {
    
    @Published var flashCardManager = FlashCardManager()
    
    func addFlashCard(question: String, answer: String) {
        flashCardManager.addFlashCard(question: question, answer: answer)
    }
    
    func deleteFlashCard(at index: Int) {
        flashCardManager.deleteFlashCard(at: index)
    }
    
    // Additional view model methods...
}
