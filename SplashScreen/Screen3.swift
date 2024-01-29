import SwiftUI

struct Screen3: View {
    @State private var fadeIn = false

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 10) {
                Spacer()

                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 342.83636, height: 376.81018)
                    .background(
                        Image("scrn3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 342.83636474609375, height: 476.8101806640625)
                            .clipped()
                            .opacity(fadeIn ? 1.0 : 0.0) // Fade-in animation
                            .rotationEffect(Angle(degrees: -0.64))
                    )
                    .padding(.top, 150) // Adjust the padding to bring the image down

                Spacer()

                Text("Post Tracks and let\npeople find your profile")
                    .font(Font.custom("Holtwood One SC", size: 24))
                    .foregroundColor(Constants.PrimaryTextColor)
                    .frame(width: 344, height: 193, alignment: .topLeading)
                    .opacity(fadeIn ? 1.0 : 0.0) // Fade-in animation
                    .offset(y: fadeIn ? 0 : -20) // Vertical animation

                Spacer()
                
                
            }
            .frame(width: 393, height: 952)
            .background(Color(red: 0.99, green: 0.64, blue: 0.47))
            .cornerRadius(20)
            .onAppear {
                withAnimation(.easeInOut(duration: 1.0)) {
                    fadeIn.toggle()
                }
            }

            // Add "BeatOven" text at the top-right corner
            Text("BeatOven.")
                .font(Font.custom("Condiment", size: 44))
                .foregroundColor(.black)
                .padding(.top, 100)
                .padding(.trailing, 20)
            
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
                        .position(CGPoint(x: 190.0, y: 830.0))
                }
                
                
            }
        }
    }
}

struct Constants {
    static let PrimaryTextColor: Color = Color(red: 0.14, green: 0.15, blue: 0.19)
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
    }
}

