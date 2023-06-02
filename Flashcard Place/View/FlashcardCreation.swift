//
//  FlashcardCreation.swift
//  Flashcard Place
//
//  Created by James Meegan on 6/1/23.
//

import Foundation
import SwiftUI
struct FlashCardCreationView: View {
    @EnvironmentObject private var viewModel: FlashCardViewModel
    @State private var question: String = ""
    @State private var answer: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter question", text: $question)
                .padding()
            
            TextField("Enter answer", text: $answer)
                .padding()
            
            Button(action: {
                viewModel.addFlashCard(question: question, answer: answer)
                // Optionally, reset the text fields to allow creating more flash cards
                question = ""
                answer = ""
            }) {
                Text("Add Flash Card")
            }
            .padding()
        }
    }
}
