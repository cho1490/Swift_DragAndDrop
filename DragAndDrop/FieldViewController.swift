//
//  ViewController.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/14.
//

import UIKit

class FieldViewController: UIViewController {

    var formation: Formation = Formation(FW: 3, MF: 3, DF: 4, GK: 1)
    
    var cardViews: [CardView] = (0...11).map() { _ in
        let cardView = CardView(frame: CGRect(x: 0, y: 0, width: 60, height: 80))
        return cardView
    }
    
    var zoneFW: CGFloat = 0
    var zoneMF: CGFloat = 0
    var zoneDF: CGFloat = 0
    var zoneGK: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubView()
    }
    
    func addSubView() {
        let height = view.frame.height
        let width = view.frame.width
        
        let distanceFW = width / CGFloat(formation.FW + 1)
        let distanceMF = width / CGFloat(formation.MF + 1)
        let distanceDF = width / CGFloat(formation.DF + 1)
        let distanceGK = width / CGFloat(formation.GK + 1)
        
        let zone = height / 5 // 5 = 4 (Line) + 1
        zoneFW = zone
        zoneMF = zone * 2
        zoneDF = zone * 3
        zoneGK = zone * 4
                        
        for cardView in cardViews {
            cardView.setPosition(position: formation.getNextPosition())
            view.addSubview(cardView)
            
            cardView.translatesAutoresizingMaskIntoConstraints = false
                        
            switch cardView.getPosition() {
            case .FW:
                NSLayoutConstraint.activate([
                    cardView.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: distanceFW),
                    cardView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: zoneFW)
                ])
            case .MF:
                NSLayoutConstraint.activate([
                    cardView.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: distanceMF),
                    cardView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: zoneMF)
                ])
            case .DF:
                NSLayoutConstraint.activate([
                    cardView.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: distanceDF),
                    cardView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: zoneDF)
                ])
            case .GK:
                NSLayoutConstraint.activate([
                    cardView.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: distanceGK),
                    cardView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: zoneGK)
                ])
            default:
                return
            }
        }
    }

}

