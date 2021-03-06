//
//  RatingsView.swift
//  IceCreamFlavors
//
//  Created by Vui Nguyen on 8/30/20.
//  Copyright © 2020 SunfishEmpire. All rights reserved.
//

import SwiftUI

struct MainRowRatingsView: View {
    var count:Int = 4
    var rating:[String]{
        let symbolName = "star.fill"
        return Array(repeating:symbolName, count:count)
    }
    var body: some View {
        HStack {
            ForEach(rating, id:\.self){item in
                Image(systemName: item)
                    //.foregroundColor(.green)
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        MainRowRatingsView(count: 5)
    }
}
