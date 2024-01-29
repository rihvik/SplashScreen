import SwiftUI

struct Screen2: View {
    var body: some View {
        ZStack {
            
            // Text: "Get your beats fresh from oven"

            
            // Image: "scrn2"
            Image("scrn2") // Replace "scrn2" with the actual name of your image asset
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top, 100)
                .padding(.leading, 20)
                .frame(width: 1000,height: 700)
            
            Text("Get your beats fresh from oven")
                .foregroundColor(.white)
                .font(Font.custom("SF Pro Display", size: 48)
                    .weight(.bold))
                .padding()
                .cornerRadius(10)
                .padding(.top, 50)
                .position(CGPoint(x: 100.0, y: 120.0))
                .frame(width:300)
            
            // Text: "Beat oven" at the bottom left
            Text("Beat oven")
                .foregroundColor(.black)
                .font(Font.custom("Condiment", size: 44))
                .padding()
                
                .cornerRadius(10)
                .padding(.bottom, 50)
                .padding(.leading, 20)
                .position(CGPoint(x: 390.0, y: 710.0))
            
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
        .background(Color(red: 0.48, green: 0.83, blue: 0.65))


    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
