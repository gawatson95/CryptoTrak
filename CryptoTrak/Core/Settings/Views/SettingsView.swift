//
//  SettingsView.swift
//  CryptoTrak
//
//  Created by Grant Watson on 5/13/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    
    let defaultURL = URL(string: "https://www.google.com")!
    let personalURL = URL(string: "https://bit.ly/gwcoding")!
    let linkedinURL = URL(string: "https://www.linkedin.com/in/gawatson95")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.background
                    .ignoresSafeArea()
                
                List {
                    personalSection
                        .listRowBackground(Color.theme.background)
                    coinGeckoSection
                        .listRowBackground(Color.theme.background)
                    applicationSection
                        .listRowBackground(Color.theme.background)
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
    }
}

extension SettingsView {
    
    private var personalSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: Color.theme.accent, radius: 6)
                Text("This app was made to practice and implement SwiftUI techniques including Combine, MVVM Architechture, and CoreData.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            HStack {
                Image(colorScheme == .light ? "signBlack" : "signWhite")
                    .resizable()
                    .frame(width: 55, height: 50)
                
                Link("Portfolio", destination: personalURL)
            }
            
            HStack {
                Image("linkedin")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Link("LinkedIn", destination: linkedinURL)
            }
            
            HStack {
                Image("email")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text("gawatson95@gmail.com")
                    .accentColor(Color.theme.accent)
            }
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The data used in this app to track live cryptocurrency statistics comes from a free API provided by CoinGecko. Updates may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            
            Link("Visit CoinGecko", destination: coinGeckoURL)
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
}
