//
//  CardStackView.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 21/10/25.
//

import SwiftUI

struct CardStackView: View {
    
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                ZStack{
                    ForEach(viewModel.cardModels) { card in
                        CardView(viewModel: viewModel, model: card)
                    }
                }
                
                if !viewModel.cardModels.isEmpty {
                    SwipeActionButtonsView(viewModel: viewModel)
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image("tinder-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 88)
                    
                }
            }
        }
    }
}

#Preview {
    CardStackView()
}
