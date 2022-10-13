//
//  ListView.swift
//  SquaresInIzmir
//
//  Created by Murat Baykor on 13.10.2022.
//

import SwiftUI

struct ListView: View {
    
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                    NavigationLink {
                        SquareDetailView()
                    } label: {
                        SquareCell()
                    }



                }
            }
            .navigationTitle("Squares")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct AvatarView: View {
    var body: some View {
        Image("placeholder-Avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 35)
            .clipShape(Circle())
    }
}

struct SquareCell: View {
    var body: some View {
        HStack(spacing: 15) {
            Image("placeholder-Square")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading) {
                Text("Name of the square")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                   
                HStack {
                    AvatarView()
                    AvatarView()
                    AvatarView()
                }
            }
        }
    }
}
