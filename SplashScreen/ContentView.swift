//
//  ContentView.swift
//  SplashScreen
//
//  Created by user2 on 27/01/24.
//
import SwiftUI

struct ContentView: View {
    @State private var showSplashScreen = true
    

    var body: some View {
        ZStack {
            if showSplashScreen {
                SplashScreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                showSplashScreen = false
                            }
                        }
                    }
            } else {
                NavigationView {
                    Screen1()
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
