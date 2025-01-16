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
                HStack(alignment: .center){
                    Text("Crypto App")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                        .foregroundStyle(Color.green)
                    
                    Button{
                        print("page rafraîchie")
                    } label: {
                        Image(systemName:"arrow.clockwise.circle")
                            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.green)
                    }
                }
                
                HStack{
                    Button{
                        print("calendrier ouvert")
                    } label:{
                        Image(systemName: "calendar")
                            .frame(width:30, height: 30)
                            .background(Color.green)
                            .foregroundColor(.black)
                            .cornerRadius(25)
                    }
                    
                    Text("Monday September 13, 2025")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    cryptoValueInfo(cryptoName: "BIT", cryptoImage: "bitcoin", cryptoValue: 51)
                    Spacer()
                    cryptoValueInfo(cryptoName: "ETH", cryptoImage: "etherium", cryptoValue: 21)
                    Spacer()
                    cryptoValueInfo(cryptoName: "XRP", cryptoImage: "xrp", cryptoValue: 12)
                    Spacer()
                    cryptoValueInfo(cryptoName: "XLM", cryptoImage: "xlm", cryptoValue: 6)
                    Spacer()
                }
                
                Spacer()
                
                Button{
                    print("Convertissage des dollars en euros effectué")
                } label:{
                    Text("Convert To €")
                        .frame(width: 280, height:50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                Spacer()
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
            
            Text("$ \(cryptoValue)K")
                .font(.title2)
                .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    ContentView()
}
