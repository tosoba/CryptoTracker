//
//  CurrencyHistoryChart.swift
//  CryptoTracker
//
//  Created by merengue on 18/03/2018.
//  Copyright © 2018 merengue. All rights reserved.
//

import UIKit
import Charts

protocol CurrencyHistoryChartDelegate {
    var entries: [(Int, Double)] {get set}
}

class CurrencyHistoryChart: UIView {
    private var dataEntries: [ChartDataEntry] = []
    
    var delegate: CurrencyHistoryChartDelegate! {
        didSet {
            setChartData()
            setupChart()
        }
    }
    
    private var dataSetGradient: CGGradient {
        let gradientColors = [UIColor.blue.cgColor, UIColor.clear.cgColor] as CFArray
        let colorLocations: [CGFloat] = [1.0, 0.0]
        return CGGradient.init(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: gradientColors, locations: colorLocations)!
    }
    
    private var chartDataSet: ChartDataSet {
        let dataSet = LineChartDataSet(values: dataEntries, label: "USD")
        dataSet.colors = [.blue]
        dataSet.setCircleColor(.blue)
        dataSet.circleHoleColor = .blue
        dataSet.circleRadius = 4.0
        dataSet.mode = .cubicBezier
        dataSet.cubicIntensity = 0.2
        dataSet.drawCirclesEnabled = false
        dataSet.valueFont = UIFont(name: "Helvetica", size: 12.0)!
        dataSet.fill = Fill.fillWithLinearGradient(dataSetGradient, angle: 90.0)
        dataSet.drawFilledEnabled = true
        return dataSet
    }
    
    private var chartData: ChartData {
        let data = LineChartData()
        data.addDataSet(chartDataSet)
        data.setDrawValues(true)
        return data
    }
    
    private func setChartData() {
        delegate.entries.forEach { (entry) in
            dataEntries.append(ChartDataEntry(x: Double(entry.0), y: entry.1))
        }
    }
    
    private var chartView: LineChartView {
        let lineChartView = LineChartView()
        self.addSubview(lineChartView)
        lineChartView.constraintAnchors(to: self, topConstant: 20)
        lineChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .easeInSine)
        lineChartView.noDataTextColor = .white
        lineChartView.noDataText = "No historical currency value data."
        lineChartView.backgroundColor = .white
        lineChartView.xAxis.labelPosition = .bottom
        lineChartView.xAxis.drawGridLinesEnabled = false
        lineChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: delegate.entries.map({ (entry) -> String in
            String(describing: entry.0)
        }))
        lineChartView.chartDescription?.enabled = false
        lineChartView.legend.enabled = true
        lineChartView.rightAxis.enabled = false
        lineChartView.leftAxis.drawGridLinesEnabled = false
        lineChartView.leftAxis.drawLabelsEnabled = true
        lineChartView.data = chartData
        return lineChartView
    }
    
    func setupChart() {
        self.backgroundColor = .white
        self.addSubview(chartView)
    }
}
