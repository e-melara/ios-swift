//
//  ContentView.swift
//  BloomMovie
//
//  Created by Edwin Melara on 2/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeString, systemImage: Constants.homeIconString) {
                HomeView()
            }
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIconString) {
                
            }
            Tab(Constants.searchString, systemImage: Constants.searchIconString) {
                
            }
            Tab(Constants.downloadString, systemImage:Constants.downloadIconString) {
                
            }
        }
    }
}

#Preview {
    ContentView()
}
