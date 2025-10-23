//
//  UserProfileView.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 22/10/25.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex = 0
    let user: User
    
    var body: some View {
        VStack{
            HStack{
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                }
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(user.profileImageURLs[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                            .overlay {
                                ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: user.profileImageURLs.count)
                            }
                        
                        CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: user.profileImageURLs.count)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About Me")
                            .fontWeight(.semibold)
                        
                        Text("Some test bio for now..")
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Essentials")
                                .fontWeight(.semibold)
                            
                            HStack{
                                Image(systemName: "person")
                                
                                Text("Woman")
                                
                                Spacer()
                            }
                            
                            HStack{
                                Image(systemName: "arrow.down.forward.and.arrow.up.backward.circle")
                                
                                Text("Straight")
                                
                                Spacer()
                            }
                            HStack{
                                Image(systemName: "book")
                                
                                Text("Actress")
                                
                                Spacer()
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[0])
}
