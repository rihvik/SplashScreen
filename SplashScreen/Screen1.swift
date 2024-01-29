//
//  Screen1.swift
//  SplashScreen
//
//  Created by user2 on 28/01/24.
//

import SwiftUI

struct Screen1: View {
    var body: some View {
        ZStack {
            
            // Text: "Get your beats fresh from oven"

            
            // Image: "scrn2"
            Image("scrn1") // Replace "scrn2" with the actual name of your image asset
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top, 100)
                .padding(.leading, 20)
                .frame(width: 1000,height: 800)
                .position(CGPoint(x: 250.0, y: 300.0))
            
            Text("BeatOven")
                .foregroundColor(.black)
                .font(Font.custom("Condiment", size: 44))
                .padding()
                .cornerRadius(10)
                .padding(.top, 50)
                .position(CGPoint(x: 40.0, y: 80.0))
                .frame(width:300)
            
            // Text: "Beat oven" at the bottom left
            Text("Find artists across the world to collaborate. ")
                .foregroundColor(.black)
                .font(Font.custom("SF Pro Display", size:38)
                    .weight(.bold))
                .padding()
                
                .cornerRadius(10)
                .padding(.bottom, 50)
                .padding(.leading, 20)
                .position(CGPoint(x: 230.0, y: 650.0))
            
            // Button: "Next" at the bottom
            VStack {
                Spacer()
                Button(action: {
                    // Handle button tap action
                }) {
                    Text("Next")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .frame(width: 300, height: 200)
                }
                .padding()
                .frame(width: 500,height: 100)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.72, green: 0.9, blue: 0.71))


    }
}
struct Constants1 {
            
            static let PrimaryTextColor: Color = Color(red: 0.14, green: 0.15, blue: 0.19)
               }

#Preview {
    Screen1()
}
