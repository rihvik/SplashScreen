//
//  DemoScreen1.swift
//  SplashScreen
//
//  Created by user2 on 29/01/24.
//

import SwiftUI

struct DemoScreen1: View {
    @Namespace var namespace
    @State var show = false
    var body: some View {
        ZStack{
            if show {
                VStack(alignment: .leading, spacing: 12) {
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("I am done")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                }
                .padding(20)
                .foregroundColor(.white)
                .background(
                    Image("scrn1")
                        .matchedGeometryEffect(id: "background", in: namespace))
                .padding(20)
            }
            
            else {
                VStack(alignment: .leading, spacing: 12) {
                    Spacer()
                    Text("I am done")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                    
                }
                .padding(20)
                .foregroundColor(.black)
                .background(
                    Image("scrn2").matchedGeometryEffect(id: "background", in: namespace))
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.6,dampingFraction: 0.8)){
                show.toggle()
            }
            
        }
    }
}

#Preview {
    DemoScreen1()
}
