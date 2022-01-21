//
//  ContentView.swift
//  I am Rich 2
//
//  Created by Get My Parking on 21/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Hello, world!")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    Text("iOS Developer")
                Divider()
                InfoView(text: "+91 96708 73598", imageName: "phone.fill")
                InfoView(text: "GMP@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                Text(text)
            })
            .padding(.all)
    }
    
}
