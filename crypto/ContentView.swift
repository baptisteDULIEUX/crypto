import SwiftUI

struct ContentView: View {
    
    @State private var isDollar: Bool = true
    
    @State var forecasts: [crypto] = [
        crypto(cryptoName: "ETH", cryptoImage: "etherium", cryptoValue: 10, currency: ""),
        crypto(cryptoName: "BIT", cryptoImage: "bitcoin", cryptoValue: 5, currency: ""),
        crypto(cryptoName: "XLM", cryptoImage: "xlm", cryptoValue: 13, currency: ""),
        crypto(cryptoName: "XRP", cryptoImage: "xrp", cryptoValue: 7, currency: "")
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack(alignment: .center) {
                    Text("Crypto App")
                        .font(.title)
                        .bold()
                        .foregroundColor(.mint)
                    
                    Button {
                        reloadPage()
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.mint)
                    }
                }
                
                HStack {
                    Button {
                        print("Calendar opened")
                    } label: {
                        Image(systemName: "calendar")
                            .frame(width: 30, height: 30)
                            .background(Color.green)
                            .foregroundColor(.black)
                            .cornerRadius(25)
                    }
                    
                    Text("Monday September 13, 2025")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    cryptoValueInfo(crypto: forecasts[0], isDollar: $isDollar)
                    Spacer()
                    cryptoValueInfo(crypto: forecasts[1], isDollar: $isDollar)
                    Spacer()
                    cryptoValueInfo(crypto: forecasts[2], isDollar: $isDollar)
                    Spacer()
                    cryptoValueInfo(crypto: forecasts[3], isDollar: $isDollar)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    isDollar.toggle()
                } label: {
                    Text("Convert To \(isDollar ? "$" : "€")")
                        .frame(width: 280, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                Spacer()
            }
        }
    }
    
    func reloadPage() {
        for i in 0..<forecasts.count {
            forecasts[i].cryptoValue += 1
        }
    }
}

struct cryptoValueInfo: View {
    
    var crypto: crypto
    @Binding var isDollar: Bool
    
    var body: some View {
        VStack {
            Text(crypto.cryptoName)
                .font(.title2)
                .foregroundColor(.white)
            
            Image(crypto.cryptoImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text(" \(isDollar ? "$" : "€") \(crypto.cryptoValue)K")
                .font(.title2)
                .foregroundColor(.white)
        }
    }
}

struct Crypto {
    var cryptoName: String
    var cryptoImage: String
    var cryptoValue: Int
}

#Preview {
    ContentView()
}
