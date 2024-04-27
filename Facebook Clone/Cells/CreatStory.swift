//
//  CreatStory.swift
//  Facebook Clone
//
//  Created by Nodir on 26/04/24.
//

import SwiftUI

struct CreatStory: View {
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                Image("person")
                    .resizable()
                    .frame(width: 150, height: 180)
                    .scaledToFit()
                Image("white")
                    .resizable()
                    .frame(width: 150, height: 70)
                    .background(.gray)
                    .padding(.top, -10)
            }
            VStack {
                Image(systemName: "plus")
                    .frame(width: 35, height: 35)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 3))
                VStack {
                    Text("Creat a")
                    Text("Story")
                }
                .padding(.bottom, 5)
                .fontWeight(.bold)
                
            }
        }
        .frame(width: 150, height: 250)
        .cornerRadius(15)
        
    }
}

#Preview {
    CreatStory()
}
