//
//  ChangePost.swift
//  Facebook Clone
//
//  Created by Nodir on 26/04/24.
//

import SwiftUI

struct ChangePost: View {
    var body: some View {
        
        VStack {
            
            HStack(alignment: .top) {
                Image("iphone")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                VStack(alignment: .leading) {
                    Text("Omadbek Kosimov")
                        .fontWeight(.bold)
                    Text("picture")
                    HStack {
                        Text("1d")
                        Text("-")
                        Image(systemName: "globe.central.south.asia.fill")
                    }
                }
                
                HStack(alignment: .center) {
                    Text("updated his profile")
                    Image(systemName: "ellipsis")
                }
            }
            .frame(height: 40)
            
            VStack {
                Image("iphone")
                    .resizable()
                    .frame(width: 340, height: 340)
                    .cornerRadius(170)
                    .overlay(RoundedRectangle(cornerRadius: 300).stroke(.gray, lineWidth: 2))
            }
            .padding(.top, 40)
            HStack {
                HStack {
                    Image(systemName: "hand.thumbsup.fill")
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(Circle())
                    Text("9")
                    Spacer()
                }
            }
            .padding(.leading, 10)
            
            HStack {}.frame(height: 0.5).frame(maxWidth: .infinity).background(.gray.opacity(0.5)).padding(.top, 5)
            HStack {
                Spacer()
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
                Spacer()
                HStack {
                    Image(systemName: "bubble")
                    Text("Comment")
                }
                Spacer()
                HStack {
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                }
                Spacer()
            }
        }
        .padding(.top, 10)
        HStack {}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.5))
    }
}

#Preview {
    ChangePost()
}
