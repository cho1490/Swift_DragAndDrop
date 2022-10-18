//
//  FieldView.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/17.
//

import UIKit

class FieldView: UIView {
    
    var formation: Formation = Formation(FW: 3, MF: 3, DF: 4, GK: 1)
    
    var cardViews: [CardView] = (0...10).map() { index in
        let cardView = CardView(frame: CGRect(x: 0, y: 0, width: 45, height: 65))
        cardView.tag = index
        return cardView
    }
    
    var zoneFW: CGFloat = 0
    var zoneMF: CGFloat = 0
    var zoneDF: CGFloat = 0
    var zoneGK: CGFloat = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        backgroundColor = .systemBackground
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(drag))
        
        for cardView in cardViews {
            cardView.addGestureRecognizer(panGesture)
            cardView.setPosition(position: formation.getNextPosition())
            addSubview(cardView)
            cardView.translatesAutoresizingMaskIntoConstraints = false
        }
    }
        
    func setCardView() {
        let height = frame.height
        let width = frame.width
        
        let distanceFW = width / CGFloat(formation.FW + 1)
        let distanceMF = width / CGFloat(formation.MF + 1)
        let distanceDF = width / CGFloat(formation.DF + 1)
        let distanceGK = width / CGFloat(formation.GK + 1)
        
        let zone = height / 5
        zoneFW = zone
        zoneMF = zone * 2
        zoneDF = zone * 3
        zoneGK = zone * 4
                        
        for cardView in cardViews {
            switch cardView.getPosition() {
            case .FW:
                NSLayoutConstraint.activate([
                    cardView.centerXAnchor.constraint(equalTo: leadingAnchor, constant: distanceFW),
                    cardView.centerYAnchor.constraint(equalTo: topAnchor, constant: zoneFW)
                ])
            case .MF:
                NSLayoutConstraint.activate([
                    cardView.centerXAnchor.constraint(equalTo: leadingAnchor, constant: distanceMF),
                    cardView.centerYAnchor.constraint(equalTo: topAnchor, constant: zoneMF)
                ])
            case .DF:
                NSLayoutConstraint.activate([
                    cardView.centerXAnchor.constraint(equalTo: leadingAnchor, constant: distanceDF),
                    cardView.centerYAnchor.constraint(equalTo: topAnchor, constant: zoneDF)
                ])
            case .GK:
                NSLayoutConstraint.activate([
                    cardView.centerXAnchor.constraint(equalTo: leadingAnchor, constant: distanceGK),
                    cardView.centerYAnchor.constraint(equalTo: topAnchor, constant: zoneGK)
                ])
            default:
                return
            }
        }
    }

    @objc func drag(sender: UIPanGestureRecognizer) {
        print("실행 drag")
        if let view = sender.view {
            let cardView = cardViews[view.tag]
            let translation = sender.translation(in: cardView)
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
            sender.setTranslation(.zero, in: cardView)
        }
        
    }
    
}