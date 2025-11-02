//
//  HomeView.swift
//  BloomMovie
//
//  Created by Edwin Melara on 2/11/25.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleUrl
    
    var body: some View {
        GeometryReader { geo in
            ScrollView (.vertical){
                LazyVStack {
                    AsyncImage(url: URL(string: heroTestTitle)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .overlay {
                                LinearGradient(
                                    stops: [Gradient.Stop(color: .clear, location: 0.8),
                                            Gradient.Stop(color: .gradient, location: 1)], startPoint: .top, endPoint: .bottom)
                            }
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width, height: geo.size.height * 0.85)
                    
                    HStack {
                        Button {
                            
                        } label : {
                            Text(Constants.playString)
                                .ghotButton()
                        }
                        
                        Button {
                            
                        } label: {
                            Text(Constants.downloadString)
                                .ghotButton()
                        }
                    }
                    
                    HorizontalListView(header: Constants.trendingMovieString)
                    HorizontalListView(header: Constants.trendingTVString)
                    HorizontalListView(header: Constants.topRatedMovieString)
                    HorizontalListView(header: Constants.topRatedTVString)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
