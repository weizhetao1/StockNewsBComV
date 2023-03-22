//
//  ContentView.swift
//  StockNews
//
//  Created by Collins, Matthew - MC on 22/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var apiManager = ApiManager.shared
    
    var body: some View {
        NavigationView {
            if let results = apiManager.results {
                List {
                    ForEach(results, id:\.ticker) { item in
                        NavigationLink(destination: StockInfoView(name: item.name), label: {
                            HStack {
                                Text("\(item.name)")
                                Spacer()
                                Text("\(item.ticker)")
                            }
                        })
                    }
                }
                .navigationTitle(Text("Stock Data"))
            }
            else {
                Text("Loading stock data...")
            }
        }
        .onAppear {
            Task {
                await apiManager.getTickers()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
