//
//  Demo2.swift
//  SplashScreen
//
//  Created by user2 on 30/01/24.
//

import SwiftUI

struct Demo2: View {
    @State private var selectedIndicator = 0
    

    var body: some View {
        NavigationView {
            ZStack {
                Image("scrn3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 342.83636474609375, height: 406.8101806640625)
                    .clipped()
                    .position(x:250,y:350)
                    .rotationEffect(Angle(degrees: -0.64))

                Text("BeatOven")
                    .foregroundColor(.black)
                    .font(Font.custom("Condiment", size: 44))
                    .padding()
                    .cornerRadius(10)
                    .padding(.top, 50)
                    .position(CGPoint(x: 240.0, y: 80.0))
                    .frame(width: 300)

                Text("Post Tracks and let\npeople find your profile")
                    .font(Font.custom("Holtwood One SC", size: 24))
                    .foregroundColor(Constants.PrimaryTextColor)
                    .frame(width: 344, height: 193, alignment: .topLeading)
                    .padding()
                    .cornerRadius(10)
                    .padding(.bottom, 50)
                    .padding(.leading, 20)
                    .position(CGPoint(x: 230.0, y: 670.0))

                VStack(spacing: 0) {
                    Spacer()

                    HStack {
                        // Indicator 1
                        Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15, height: 15)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.96))

                        .cornerRadius(100)
                        .onTapGesture {
                                selectedIndicator = 0
                            }
                            .padding(.trailing, 5)

                        // Indicator 2
                        Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15, height: 15)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.96))

                        .cornerRadius(100)
                        .onTapGesture {
                                selectedIndicator = 1
                            }
                            .padding(.trailing, 5)
                        
                        // Indicator 3
                        Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 30, height: 15)
                        .background(Color(red: 0.99, green: 0.44, blue: 0.44))

                        .cornerRadius(100)
                        .onTapGesture {
                                selectedIndicator = 2
                            }
                            .padding(.trailing, 5)

                        // Indicator 4
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 15, height: 15)
                            .background(Color(red: 0.96, green: 0.96, blue: 0.96))

                            .cornerRadius(100)
                            .onTapGesture {
                                selectedIndicator = 3
                            }
                    }
                    
                    .padding(.bottom, 25)
                    .position(x:250,y:685)

                    NavigationLink(destination: Screen4()) {
                        Text("Next")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .bold))
                            .padding(.horizontal, 123)
                            .padding(.vertical, 19)
                            .background(Color.white)
                            .cornerRadius(10)
                            .frame(width: 300, height: 50)
                    }
                    .position(x: 230, y: 70)
                    .padding()
                    .frame(width: 500, height: 100)
                    
                    NavigationLink(destination: Screen4()) {
                        Text("Skip")
                            .foregroundColor(.blue)
                            .font(.system(size: 20, weight: .bold))
                                                                .cornerRadius(10)
                            .frame(width: 300, height: 50)
                    }
                    .position(x: 230, y: 30)
                    .padding()
                    .frame(width: 500, height: 100)


                    
                }
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.99, green: 0.64, blue: 0.47))
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
    
}

struct Constants {
    static let PrimaryTextColor: Color = Color(red: 0.14, green: 0.15, blue: 0.19)
}



#Preview {
    Demo2()
}
