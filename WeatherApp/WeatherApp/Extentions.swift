//
//  Extentions.swift
//  WeatherApp
//
//  Created by Jannatun Nahar Papia  on 17/12/21.
//

import Foundation
//import UIKit
import SwiftUI

extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self) // round the function 0 decimal
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
    
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
}


