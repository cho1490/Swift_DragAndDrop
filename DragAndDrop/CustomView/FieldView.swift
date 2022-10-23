//
//  FieldView.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/17.
//

import UIKit

class FieldView: UIView {
    
    private var formation: Formation = Formation(FW: 3, MF: 3, DF: 4, GK: 1)
    
    private var positionPoint: PositionPoint = PositionPoint()
    
    private var cardViews: [CardView] = (0...10).map() { index in
        let cardView = CardView(frame: CGRect(x: 0, y: 0, width: 45, height: 65))
        cardView.tag = index
        return cardView
    }
    
    var yZoneFW: CGFloat = 0
    var yZoneMF: CGFloat = 0
    var yZoneDF: CGFloat = 0
    var yZoneGK: CGFloat = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        backgroundColor = .blue
        for cardView in cardViews {
            cardView.setPosition(position: formation.getNextPosition())
            addSubview(cardView)
            cardView.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    func setPositionPoint() {
        let height = frame.height
        let width = frame.width
        
        // zone (Y)
        let zone = height / 4
        positionPoint.startFW = CGPoint(x: 0, y: 0)
        positionPoint.endFW = CGPoint(x: frame.width, y: zone)
                
        positionPoint.startMF = CGPoint(x: 0, y: positionPoint.endFW.y + 1)
        positionPoint.endMF = CGPoint(x: frame.width, y: zone * 2)
        
        positionPoint.startDF = CGPoint(x: 0, y: positionPoint.endMF.y + 1)
        positionPoint.endDF = CGPoint(x: frame.width, y: zone * 3)
        
        positionPoint.startGK = CGPoint(x: 0, y: positionPoint.endDF.y + 1)
        positionPoint.endGK = CGPoint(x: frame.width, y: zone * 4)
        // zone (Y)
        
        // zone (X)
        // FW
        positionPoint.startLW = CGPoint(x: 0, y: 0)
        positionPoint.endLW = CGPoint(x: 0, y: 0)
        // FW
        
        // MF
        // MF
        
        // DF
        // DF
        
        // GK
        // GK
        // zone (X)
    }
        
    func setCardViews() {
        let height = frame.height
        let width = frame.width
        
        let distanceFW = width / CGFloat(formation.FW + 1)
        var xZoneFW = distanceFW
        
        let distanceMF = width / CGFloat(formation.MF + 1)
        var xZoneMF = distanceMF
        
        let distanceDF = width / CGFloat(formation.DF + 1)
        var xZoneDF = distanceDF
        
        let distanceGK = width / CGFloat(formation.GK + 1)
                          
        for cardView in cardViews {
            switch cardView.getPosition() {
            case .FW:
                cardView.frame.origin.x += xZoneFW
                cardView.frame.origin.y += (positionPoint.startFW.y + positionPoint.endFW.y) / 2
                xZoneFW += distanceFW
            case .MF:
                cardView.frame.origin.x += xZoneMF
                cardView.frame.origin.y += (positionPoint.startMF.y + positionPoint.endMF.y) / 2
                xZoneMF += distanceMF
            case .DF:
                cardView.frame.origin.x += xZoneDF
                cardView.frame.origin.y += (positionPoint.startDF.y + positionPoint.endDF.y) / 2
                xZoneDF += distanceDF
            case .GK:
                cardView.frame.origin.x += distanceGK
                cardView.frame.origin.y += (positionPoint.startGK.y + positionPoint.endGK.y) / 2
            default:
                return
            }
            
            cardView.frame.origin.x -= cardView.frame.width / 2
            cardView.frame.origin.y -= cardView.frame.height / 2
        }
    }
    
    func getCardViews() -> [CardView] {
        return cardViews
    }
    
    func cardViewPositionChanged(tag: Int) {
//        cardViews[tag].frame.origin.x
//        cardViews[tag].frame.origin.y
//        cardViews[tag].setPosition(position: .GK)
    }
    
    func getPosition(x: CGFloat, y: CGFloat) {
        
    }
    
}
