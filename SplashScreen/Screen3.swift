import SwiftUI

struct Screen3: View {
    @State private var selectedIndicator = 0
    
    @State private var isActive = false

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
                            .frame(width: 342.83636474609375, height: 406.8101806640625)
                            .clipped()
                            
                            .rotationEffect(Angle(degrees: -0.64))
                    )
                    .padding(.top, 150) // Adjust the padding to bring the image down

                Spacer()

                Text("Post Tracks and let\npeople find your profile")
                    .font(Font.custom("Holtwood One SC", size: 24))
                    .foregroundColor(Constants.PrimaryTextColor)
                    .frame(width: 344, height: 193, alignment: .topLeading)
                     
                    .position(x:200,y:97)

                Spacer()
                
            }
            .frame(width: 393, height: 952)
            .background(Color(red: 0.99, green: 0.64, blue: 0.47))
            .cornerRadius(20)
            .onAppear {
                withAnimation(.easeInOut(duration: 1.0)) {
                    
                }
            }

            // Add "BeatOven" text at the top-right corner
            Text("BeatOven.")
                .font(Font.custom("Condiment", size: 44))
                .foregroundColor(.black)
                .padding(.top, 100)
                .padding(.trailing, 20)
                .position(x:310,y:120)
            
            
            VStack {
                Spacer()
                HStack {
                    Spacer() // Center the indicators horizontally

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
                        .padding(.trailing, 5)
                    
                    Spacer() // Center the indicators horizontally
                }  
                .padding(.bottom, 90)
                .position(x:195,y:750)

                NavigationLink(destination: Screen4(), isActive: $isActive) {
                    EmptyView()
                }
                .hidden()

                Button(action: {
                    isActive = true
                }) {
                    Text("Next")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .bold))
                        .padding(.horizontal, 123)
                        .padding(.vertical, 19)
                        .background(Color.white)
                        .cornerRadius(10)
                        .frame(width: 300, height: 50)
                        Spacer()
                }
                .position(x:140,y:-100)
                .padding()
                .frame(width: 300, height: 100)
                
                
            }
            
            
        }
        NavigationLink(destination: Screen4()) {
            Text("Skip")
                .foregroundColor(.blue)
                .font(.system(size: 20, weight: .bold))
                .lineLimit(nil)
                .cornerRadius(10)
                .frame(width: 300, height: 50)
        }
        .offset(x: 230, y: -30)
        .padding()
        .frame(width: 500, height: 100)
        
        
        
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


