//
//  BarGraph.swift
//  BarGraph_Exp
//
//  Created by Shak Feizi on 8/3/22.
//

import Foundation
import SwiftUI


struct BarGraph: View {
    let reports: [Report]
    
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            ForEach(self.reports, id: \.year) { report in
                BarView(report: report)
            }
        }
    }
}

struct BarView: View {
    let report: Report
    @State private var showGraph: Bool = false
    
    var body: some View {
        let value = report.revenue / 500
        let heightValue = Swift.min(value * 5, 500)
        return VStack {
            Spacer()
            Text(String(format: "$%.2f", report.revenue))
            Rectangle()
                .fill(.orange)
                .frame(width: 75, height: self.showGraph ? CGFloat(heightValue) : 0.0)
                .onAppear {
                    withAnimation(.default) {
                        self.showGraph = true
                    }
                }
            Text(report.year)
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    
    static var previews: some View {
        BarGraph(reports: Report.all())
    }
}

