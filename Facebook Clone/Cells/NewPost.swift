//
//  NewPost.swift
//  Facebook Clone
//
//  Created by Nodir on 27/04/24.
//

import SwiftUI

struct NewPost: View {
    var body: some View {
        
        VStack {
            
            HStack {
                Image("it_park")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 25).stroke(.gray.opacity(0.3), lineWidth: 1))
                
                VStack {
                    Text("IT-Park")
                    HStack {
                        Text("1d")
                        Text("-")
                        Image(systemName: "globe.europe.africa")
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.leading, 10)
            .padding(.bottom, 20)
            .frame(height: 50)
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "exclamationmark.questionmark")
                        .foregroundColor(.red)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("IT sohada frilansermisiz?")
                    Spacer()
                }
                .padding(.bottom, 15)
                HStack {
                    Text("Unda oxirig...")
                    Text("See More")
                        .foregroundColor(.gray)
                }
            }
            .padding(.leading, 10)
            .frame(height: 60)
            
            HStack {
                Image("it_img")
                    .resizable()
                    .frame(width: 210, height: 220)
                    .aspectRatio(contentMode: .fit)
                Image("it_img")
                    .resizable()
                    .frame(width: 210, height: 220)
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.top, 20)
            .padding(.bottom, 10)
            
            HStack {
                Image(systemName: "hand.thumbsup.fill")
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
                    .background(.blue)
                    .clipShape(Circle())
                Text("4")
                Spacer()
                Text("1 Share")
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            
            HStack{}.frame(height: 1).frame(maxWidth: .infinity).background(.gray.opacity(0.4))
            
            HStack {
                Spacer()
                HStack{
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
                Spacer()
                HStack{
                    Image(systemName: "bubble")
                    Text("Comment")
                }
                Spacer()
                HStack{
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                }
                Spacer()
            }
            
            HStack{}.frame(height: 1).frame(maxWidth: .infinity).background(.gray.opacity(0.4))
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
        .padding(.top, 10)
        
    }
}

#Preview {
    NewPost()
}
