//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Jannatun Nahar Papia  on 16/12/21.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        // its fully white
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
