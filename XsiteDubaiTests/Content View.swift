import SwiftUI

struct ContentView: View {
    @State private var showAbout = false
    @State private var showContact = false
    
    var body: some View {
        ZStack {
            Theme.gradient.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                
                Image("Logo_Xsite")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                    .shadow(radius: 12)
                
                Text("Xsite Dubai")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                
                Text("Real Estate Brokers LLC")
                    .font(.headline)
                    .foregroundColor(.gray)
                
                Spacer()
                
                VStack(spacing: 15) {
                    Button(action: {}) {
                        Label("Ready Properties", systemImage: "house.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.white)
                    
                    Button(action: {}) {
                        Label("Off-Plan Projects", systemImage: "building.2.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.white.opacity(0.9))
                    
                    Button(action: {}) {
                        Label("Leasing", systemImage: "key.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.white.opacity(0.8))
                    
                    Button(action: { showContact.toggle() }) {
                        Label("Contact Us", systemImage: "envelope.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                    .tint(.white.opacity(0.95))
                    
                    Button(action: { showAbout.toggle() }) {
                        Label("About Us", systemImage: "info.circle.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                    .tint(.white.opacity(0.9))
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                Text("App by Faraz Kazmi – shah-app.com")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
            }
            .padding()
            .sheet(isPresented: $showAbout) {
                AboutView()
            }
            .sheet(isPresented: $showContact) {
                ContactView()
            }
        }
    }
}
