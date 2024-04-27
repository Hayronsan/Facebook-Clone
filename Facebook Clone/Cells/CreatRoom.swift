//
//  CreatRoom.swift
//  Facebook Clone
//
//  Created by Nodir on 26/04/24.
//

import SwiftUI

struct CreatRoom: View {
    
    var body: some View {
        
        HStack {
            Image("room")
                .resizable()
                .frame(width: 25, height: 20)
            VStack {
                Text("Creat")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                Text("Room")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
            }
        }
        .frame(width: 130, height: 50)
        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.blue, lineWidth: 1))
        
    }
}

#Preview {
    CreatRoom()
}
