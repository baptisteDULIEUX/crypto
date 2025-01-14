//
//  ContentView.swift
//  crypto
//
//  Created by dulieux baptiste on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Crypto App")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                    .foregroundStyle(Color.green)
                
                HStack{
                    Button{
                        print("calendrier ouvert")
                    } label:{
                        Image(systemName: "calendar")
                            .frame(width:30, height: 30)
                            .background(Color.green)
                            .cornerRadius(25)
                    }
                    
                    Text("Monday September 13, 2025")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                }
                
                Spacer()
                
                HStack{
                    cryptoValueInfo(cryptoName: BIT, cryptoImage: bitcoin, cryptoValue: 51)
                }
                
                
            }
        }
    }
}

struct cryptoValueInfo: View {
    
    var cryptoName: String
    var cryptoImage: String
    var cryptoValue: Int
    
    var body: some View {
        VStack{
            Text(cryptoName)
                .font(.title2)
                .foregroundStyle(Color.white)
            
            Image(cryptoImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("$ \(cryptoValue)")
        }
    }
}

#Preview {
    ContentView()
}
