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
               Wonders(name: "Banaue Rice Terraces", photo: "banaue", miles: 216.0),
               Wonders(name: "Hundered Islands", photo: "hi", miles: 7.12)]

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(wonders) { wonder in
                NavigationLink(value: wonder) {
                    WonderCellView(wonder: wonder)
                }
            }
            .navigationTitle("Wonders")
            .navigationDestination(for: Wonders.self) { wonder in
                WonderDetailScreen(wonder: wonder)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WonderCellView: View {
    let wonder: Wonders
    var body: some View {
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
