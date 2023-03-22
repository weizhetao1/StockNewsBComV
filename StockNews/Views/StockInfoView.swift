//
//  StockInfoView.swift
//  StockNews
//
//  Created by Collins, Matthew - MC on 22/03/2023.
//

import SwiftUI
import SpriteKit
import Metal

struct StockInfoView: View {
    var name: String
    var body: some View {
        VStack(spacing: 10) {
            Text(name)
                .font(.title)
                .foregroundColor(.primary)
            Text("Current Price: $100.00")
                .font(.headline)
                .foregroundColor(.secondary)
            SpriteView(scene: SKScene(size: CGSize(width: 200, height: 200)), transition: .fade(with: .white, duration: 0.5))
                .frame(width: 200, height: 200)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(15)
        .shadow(radius: 10)
    }
}

struct StockInfoView_Previews: PreviewProvider {
    static var previews: some View {
        StockInfoView(name: "HAHA")
    }
}
