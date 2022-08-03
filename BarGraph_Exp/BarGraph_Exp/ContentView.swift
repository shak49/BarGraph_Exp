//
//  ContentView.swift
//  BarGraph_Exp
//
//  Created by Shak Feizi on 8/3/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
