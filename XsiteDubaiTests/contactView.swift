import SwiftUI

struct ContactView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.black, Color.gray.opacity(0.85)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 30) {
                    Image("Logo_Xsite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140)
                        .shadow(radius: 10)
                        .padding(.top, 40)
                    
                    Text("Contact Xsite Dubai")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("We’re here to help you find your perfect property in Dubai.")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                    
                    Divider().background(Color.white.opacity(0.3))
                    
                    VStack(spacing: 20) {
                        Link(destination: URL(string: "https://wa.me/971501234567")!) {
                            Label("Chat on WhatsApp", systemImage: "message.fill")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        }
                        
                        Link(destination: URL(string: "tel:+971501234567")!) {
                            Label("Call Us", systemImage: "phone.fill")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        }
                        
                        Link(destination: URL(string: "mailto:info@xsite.ae")!) {
                            Label("Email Us", systemImage: "envelope.fill")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        }
                        
                        Link(destination: URL(string: "https://xsite.ae")!) {
                            Label("Visit Website", systemImage: "globe")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.black)
                                .cornerRadius(12)
                        }
                    }
                    .padding(.horizontal, 30)
                    
                    Spacer(minLength: 40)
                    
                    Text("Developed by Faraz Kazmi – shah-app.com")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.bottom, 30)
                }
            }
        }
    }
}
