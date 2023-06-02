//
//  FlashCardListView.swift
//  Flashcard Place
//
//  Created by James Meegan on 6/1/23.
//

import Foundation
import SwiftUI

struct FlashCardListView: View {
    @EnvironmentObject private var viewModel: FlashCardViewModel
    

    var body: some View {
        Text("What up")
        List {
            
            ForEach(viewModel.flashCardManager.flashCards, id: \.question) { flashCard in
                VStack(alignment: .leading) {
                    Text(flashCard.question)
                        .font(.headline)
                    Text(flashCard.answer)
                        .font(.subheadline)
                    
                }
            }
            .onDelete(perform: deleteFlashCard)
        }
        
    }
    
    func deleteFlashCard(at offsets: IndexSet) {
        offsets.forEach { index in
            viewModel.deleteFlashCard(at: index)
        }
    }
}
