//
//  ViewController.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/14.
//

import UIKit

class FieldViewController: UIViewController {
    
    let selfView = FieldView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(selfView)
        selfView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            selfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            selfView.leftAnchor.constraint(equalTo: view.leftAnchor),
            selfView.rightAnchor.constraint(equalTo: view.rightAnchor),
            selfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
                                
        setCardViews()
    }
    
    func setCardViews() {
        selfView.setPositionPoint()
        selfView.setCardViews()
        
        for cardView in selfView.getCardViews() {
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(drag))
            cardView.addGestureRecognizer(panGesture)
        }
    }
    
    @objc func drag(sender: UIPanGestureRecognizer) {
        if let view = sender.view {
            let translation = sender.translation(in: view)
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
            sender.setTranslation(.zero, in: view)
            selfView.cardViewPositionChanged(tag: view.tag)
        }
    }

}

