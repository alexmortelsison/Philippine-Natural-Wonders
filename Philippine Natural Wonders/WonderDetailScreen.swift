//
//  WonderDetailScreen.swift
//  Philippine Natural Wonders
//
//  Created by Alex Sison on 3/31/24.
//

import SwiftUI

struct WonderDetailScreen: View {
    let wonder: Wonders
    @State private var zoomed: Bool = false

    var body: some View {
        VStack {
            Image(wonder.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(wonder.name)
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
            Text("\(wonder.miles.formatted()) miles")
            Spacer()
        }
        .navigationTitle(wonder.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        WonderDetailScreen(wonder: Wonders(name: "Tubbataha Reef", photo: "tubbataha", miles: 93.0))
    }
}
