//
//  StoryItem.swift
//  Facebook Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct StoryItem: View {
    
    var body: some View {
        
        ZStack {
            Image("image1")
                .resizable()
                .frame(width: 150, height: 250)
                .scaledToFit()
            VStack(alignment: .leading) {
                Image("image2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(.blue, lineWidth: 5))
                Spacer()
                Text("Kurbanov")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                Text("Khurshidbek")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
            }.padding()
        }
        .frame(width: 150, height: 250)
        .cornerRadius(15)
        
    }
}

#Preview {
    StoryItem()
}
