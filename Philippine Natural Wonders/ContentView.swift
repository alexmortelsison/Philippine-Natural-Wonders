//
//  ContentView.swift
//  Philippine Natural Wonders
//
//  Created by Alex Sison on 3/31/24.
//

import SwiftUI

let wonders = [Wonders(name: "Tubbataha Reef", photo: "tubbataha", miles: 93.0),
               Wonders(name: "Chocolate Hills", photo: "ch", miles: 20.0),
               Wonders(name: "Underground River", photo: "ug", miles: 5.1),
               Wonders(name: "Mayon Volcano", photo: "mayon", miles: 21),
               Wonders(name: "Banaue Rice Terraces", photo: "banaue", miles: 216.0)]

struct ContentView: View {
    var body: some View {
        List(wonders) { wonder in
            HStack(alignment: .top) {
                Image(wonder.photo)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 100)

                VStack(alignment: .leading) {
                    Text(wonder.name)
                    Text("\(wonder.miles.formatted()) miles")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
