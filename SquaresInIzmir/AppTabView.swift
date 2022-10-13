//
//  AppTabView.swift
//  SquaresInIzmir
//
//  Created by Murat Baykor on 13.10.2022.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map.fill")
                }
            ListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet.rectangle.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
