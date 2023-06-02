//
//  BottomAppBar.swift
//  Flashcard Place
//
//  Created by James Meegan on 6/1/23.
//

import Foundation

import SwiftUI

struct BottomAppBar: View {
    @StateObject private var viewModel = BottomAppBarViewModel()

    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                viewModel.button1Tapped()
            }) {
                Image(systemName: "square.and.pencil")
            }
            
            Spacer()
            
            Button(action: {
                viewModel.button2Tapped()
            }) {
                Image(systemName: "heart")
            }
            
            Spacer()
            
            Button(action: {
                viewModel.button3Tapped()
            }) {
                Image(systemName: "person")
            }
            
            Spacer()
        }
        .padding()
        .background(Color.gray.opacity(0.2))
    }
}
