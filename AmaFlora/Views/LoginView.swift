import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 20) {
            Image("amaflora-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .shadow(radius: 5)

            Text("AmaFlora")
                .font(.custom("Inter-Bold", size: 26))
                .foregroundColor(.white)
                .padding(.bottom, 100)

            Text("Identify your plants and never forget to water them again!")
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.white.opacity(0.9))
                

            Button(action: {
                // Action connection
            }) {
                HStack {
                    Image("google-logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 42, height: 42)
                        .clipped()
                                                
                    Text("CONTINUE WITH GOOGLE")
                        .foregroundColor(Color(hex:"16641d"))
                        .padding()
                }
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 3)
            }
            .padding(.top, 50)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex:"16641d"))
    }
}

#Preview {
    ContentView()
}
