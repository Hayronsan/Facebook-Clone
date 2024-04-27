//
//  ContentView.swift
//  Facebook Clone
//
//  Created by Nodir on 25/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                // live, photo, room
                VStack {
                    HStack {
                        Image("person")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Text("What's on your mind?")
                            .font(.system(size: 17))
                    }.frame(height: 90)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    HStack {}.frame(height: 1)
                        .frame(maxWidth: .infinity)
                        .background(.gray.opacity(0.3))
                    
                    HStack {
                        Spacer()
                        HStack {
                            Image("live_red")
                                .foregroundColor(.red)
                            Text("Live")
                        }
                        Spacer()
                        HStack {
                            Image(systemName: "photo")
                                .foregroundColor(.green)
                            Text("Photo")
                        }
                        Spacer()
                        HStack {
                            Image("room")
                                .resizable()
                                .frame(width: 18, height: 18)
                            Text("Room")
                        }
                        Spacer()
                    }.frame(height: 50)
                    
                }
                
                // creat room
                VStack {
                    HStack {}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.3))
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                CreatRoom()
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: false)
                            }
                        }
                    }.frame(height: 70)
                        .frame(maxWidth: .infinity)
                        .padding(.leading, 10)
                }
                
                // creat story
                VStack {
                    HStack {}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.3))
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                CreatStory()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                }
                
                // post items
                VStack {
                    HStack {}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.3))
                    ChangePost()
                    PostItem(img_url: "image1")
                    PostItem(img_url: "image2")
                    PostItem(img_url: "image3")
                }
                
                
            }
            .navigationBarItems(
                leading: Text("facebook").fontWeight(.bold)
                    .font(.system(size: 25)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/),
                trailing: HStack {
                    ZStack {
                        Circle().fill(.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image(systemName: "magnifyingglass")
                    }
                    ZStack {
                        Circle().fill(.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image(systemName: "bolt.circle.fill")
                    }
                    
                })
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}
