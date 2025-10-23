import SwiftUI

struct AboutView: View {
    @State private var showContact = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.black, Color.gray.opacity(0.85)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 25) {
                    Image("Logo_Xsite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .shadow(radius: 10)
                        .padding(.top, 40)
                    
                    Text("Xsite Real Estate Brokers LLC")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Text("Dubai, United Arab Emirates")
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Divider().background(Color.white.opacity(0.5))
                    
                    Text("""
Xsite Dubai is a leading property brokerage firm specializing in sales, leasing, and off-plan investments across the UAE. Our goal is to connect buyers, tenants, and investors with the most trusted developers in Dubai — including Emaar, Damac, Nakheel, Meraas, and more.

All projects are verified and registered with the Dubai Land Department (DLD) and RERA, ensuring full transparency and security for every transaction.
""")
                        .font(.body)
                        .foregroundColor(.white.opacity(0.9))
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                    
                    Button(action: { showContact.toggle() }) {
                        Label("Contact Us", systemImage: "phone.circle.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                    .tint(.white.opacity(0.9))
                    .padding(.horizontal, 30)
                    
                    Divider().background(Color.white.opacity(0.3))
                    
                    Text("Developer: Faraz Kazmi – shah-app.com")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.bottom, 40)
                }
            }
        }
        .sheet(isPresented: $showContact) {
            ContactView()
        }
    }
}
