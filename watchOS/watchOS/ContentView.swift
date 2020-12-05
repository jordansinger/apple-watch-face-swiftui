//
//  ContentView.swift
//  watchOS
//
//  Created by Jordan Singer on 12/5/20.
//

import SwiftUI

let width = CGFloat(184)
let height = CGFloat(224)

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
            
            VStack {
                HStack {
                    VStack {
                        Text("Sat")
                            .font(.caption2)
                            .foregroundColor(.gray)
                            .textCase(.uppercase)
                        Text("5")
                    }
                    Spacer()
                    Text("10:03")
                        .font(.system(.largeTitle, design: .rounded))
                }
                .padding(.top)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("2:00–2:30PM")
                            .font(.headline)
                        Text("Haircut")
                            .fontWeight(.medium)
                            .foregroundColor(.gray)
                        Text("Barber Shop")
                            .fontWeight(.medium)
                            .italic()
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                .padding(.vertical)
                
                HStack {
                    Text("72°")
                        .font(.system(.title, design: .rounded))
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "umbrella.fill")
                        Text("90%")
                    }
                    .font(.callout)
                    
                    Spacer()
                    
                    Image(systemName: "moon.fill")
                        .font(.title)

                }
                .padding(.bottom)
            }
            .foregroundColor(.white)
            .padding()
            .frame(width: width, height: height)
            .overlay(
                RoundedRectangle(cornerRadius: 40, style: .continuous)
                            .stroke(Color.gray, lineWidth: 3)
                    )
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
