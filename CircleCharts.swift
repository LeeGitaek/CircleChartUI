//
//  CircleCharts.swift
//  CircleCharts
//
//  Created by gitaeklee on 2021/04/17.
//

import UIKit

internal class CircleCharts: UIView {

    var circleBorderColor: UIColor!
    var circleFilledColor: UIColor!

    private var circleLayer = CAShapeLayer()
    private var progressLayer = CAShapeLayer()
    private var startPoint = CGFloat(-Double.pi / 2)
    private var endPoint = CGFloat(3 * Double.pi / 2)
    var percentage:Double = 0.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func draw(_ rect: CGRect) {
        self.drawRingView()
        self.drawFillProgress(ratio: self.percentage)
    }
    
    private func drawRingView() {
        let halfSize = min(bounds.size.width/2, bounds.size.height/2)
        let circularPath = UIBezierPath(
                    arcCenter: CGPoint(x: halfSize, y: halfSize),
                    radius: CGFloat(halfSize - (4.0/2)),
                    startAngle: startPoint,
                    endAngle: endPoint,
                    clockwise: true)
      
        self.circleLayer.path = circularPath.cgPath
        self.circleLayer.fillColor = UIColor.clear.cgColor
        self.circleLayer.strokeColor = self.circleBorderColor.cgColor
        self.circleLayer.lineWidth = 4.0
        self.circleLayer.lineCap = .round
        self.circleLayer.strokeEnd = 1.0
        layer.addSublayer(circleLayer)
    }
    
    internal func drawFillProgress(ratio: Double, full: Float = 1.0) {
        let halfSize = min(bounds.size.width/2, bounds.size.height/2)
        let circlePath = UIBezierPath(
                    arcCenter: CGPoint(x:halfSize,y:halfSize),
                    radius: CGFloat(halfSize - (4.0/2) ),
                    startAngle: startPoint,
                    endAngle: startPoint + CGFloat(Double.pi * 2 * ratio),
                    clockwise: true)

        self.progressLayer.path = circlePath.cgPath
        self.progressLayer.fillColor = UIColor.clear.cgColor
        self.progressLayer.strokeColor = self.circleFilledColor.cgColor
        self.progressLayer.lineWidth = 4.0
        self.progressLayer.lineCap = .round
        self.progressLayer.strokeEnd = 0
        layer.addSublayer(progressLayer)
    }
    
    internal func progressAnimation(duration: TimeInterval) {
        let circularProgressAnimation = CABasicAnimation(keyPath: "strokeEnd")
        circularProgressAnimation.duration = duration
        circularProgressAnimation.toValue = 1.0
        circularProgressAnimation.fillMode = .forwards
        circularProgressAnimation.isRemovedOnCompletion = false
        progressLayer.add(circularProgressAnimation, forKey: "progressAnim")
    }
}
