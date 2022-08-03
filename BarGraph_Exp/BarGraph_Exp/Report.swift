//
//  Report.swift
//  BarGraph_Exp
//
//  Created by Shak Feizi on 8/3/22.
//

import Foundation


struct Report: Hashable {
    var year: String
    var revenue: Double
}

extension Report {
    static func all() -> [Report] {
        let reports = [
            Report(year: "2022", revenue: 60000.00),
            Report(year: "2021", revenue: 10000.00),
            Report(year: "2020", revenue: 30000.00),
            Report(year: "2019", revenue: 30000.00)
        ]
        return reports
    }
}
