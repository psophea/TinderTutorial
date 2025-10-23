//
//  UserMatchView.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 23/10/25.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            
            VStack(spacing: 120){
                VStack{
                    Image("itsamatch")
                        .resizable()
                        .scaledToFit()
                    
                    Text("You and Kelly have liked each other.")
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    UserMatchView(show: .constant(true))
}
