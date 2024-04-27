//
//  PostItem.swift
//  Facebook Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct PostItem: View {
    var img_url = "image1"
    
    var body: some View {
        
        VStack {
            // header
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("person")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    ZStack {
                        Circle()
                            .frame(width: 22, height: 22)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.green)
                    }
                }
                VStack(alignment: .leading, spacing: 5) {
                    Text("Khurshidbek")
                        .fontWeight(.bold)
                    HStack {
                        Text("18m")
                        Image(systemName: "globe.europe.africa")
                            .frame(width: 20, height: 20)
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.top, 10)
            
            // image
            Image(img_url)
                .resizable()
                .scaledToFit()
            
            // like love, count for comment and share
            HStack(spacing: 5) {
                HStack(spacing: -5) {
                    Image(systemName: "hand.thumbsup.fill")
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(Circle())
                    Image(systemName: "heart.fill")
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                        .background(.red)
                        .clipShape(Circle())
                }
                Text("8.4K")
                Spacer()
                Text("240 Comments")
                Text("54 Shares")
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            
            HStack {}.frame(height: 0.5).frame(maxWidth: .infinity).background(.gray.opacity(0.5)).padding(.top, 5)
            HStack {
                Spacer()
                HStack {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("Like")
                }
                Spacer()
                HStack {
                    Image(systemName: "text.bubble")
                    Text("Comment")
                }
                Spacer()
                HStack {
                    Image(systemName: "arrowshape.turn.up.left.fill")
                    Text("Share")
                }
                Spacer()
            }.frame(height: 40).padding(.top, 5)
            
            HStack {}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.5))
        }
        
    }
}

#Preview {
    PostItem()
}
