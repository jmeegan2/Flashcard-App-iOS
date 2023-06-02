//
//  ContentView.swift
//  Flashcard Place
//
//  Created by James Meegan on 6/1/23.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
////        VStack {
////                   // Your main content goes here
////
////                   Spacer()
////
////                   BottomAppBar() // Add the bottom app bar view
////
////                       .frame(height: 50)
////               }
//        .padding()
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    @StateObject private var viewModel = FlashCardViewModel()
    
    var body: some View {
        if viewModel.flashCardManager.flashCards.isEmpty {
            // The array is empty
                Text("no flashcard")
        } else {
            // The array contains elements
            Text("Flash cards found: \(viewModel.flashCardManager.flashCards.count)")
        }
        
        NavigationView {
            VStack {
                FlashCardCreationView()
                FlashCardListView()
               
            }
            .navigationTitle("Flash Cards")
        }
        .environmentObject(viewModel) // Set the viewModel as an environment object
    }
}

