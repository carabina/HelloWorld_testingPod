//
//  ProgressIndicator.swift
//  HelloWorld_testingPod
//
//  Created by Sunny Chan on 12/2/2018.
//

import UIKit

public class ProgressIndicator: UIView {
  
  lazy var shapeLayer: CAShapeLayer = {
    let shapeLayer = CAShapeLayer()
    
    let center = self.center
    let circularPath = UIBezierPath(arcCenter: center, radius: 50.0, startAngle: -CGFloat.pi/2, endAngle: 2*CGFloat.pi, clockwise: true)
    shapeLayer.path = circularPath.cgPath
    
    shapeLayer.fillColor = UIColor.clear.cgColor
    shapeLayer.strokeColor = UIColor.red.cgColor
    shapeLayer.lineWidth = 10
    shapeLayer.strokeEnd = 0
    shapeLayer.lineCap = kCALineCapRound
    shapeLayer.add(rotateAnimationStrokeEnd, forKey: "rotateStrokeEnd")
    shapeLayer.add(rotateAnimationStrokeStart, forKey: "rotateStrokeStart")
    return shapeLayer
  }()
  
  lazy var rotateAnimationStrokeEnd:CABasicAnimation = {
    let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
    basicAnimation.toValue = 1
    basicAnimation.duration = 1
    basicAnimation.fillMode = kCAFillModeForwards
    basicAnimation.repeatCount = Float.infinity
    basicAnimation.isRemovedOnCompletion = false
    return basicAnimation
  }()
  
  lazy var rotateAnimationStrokeStart:CABasicAnimation = {
    let basicAnimation = CABasicAnimation(keyPath: "strokeStart")
    basicAnimation.toValue = 1
    basicAnimation.duration = 1.5
    basicAnimation.fillMode = kCAFillModeForwards
    basicAnimation.repeatCount = Float.infinity
    basicAnimation.isRemovedOnCompletion = false
    return basicAnimation
  }()

  public override init(frame: CGRect) {
    super.init(frame: frame)
    self.layer.addSublayer(shapeLayer)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override public func awakeFromNib() {
    super.awakeFromNib()
    
  }
  
}
