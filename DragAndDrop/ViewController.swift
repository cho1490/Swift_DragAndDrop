//
//  ViewController.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/14.
//

import UIKit

class ViewController: UIViewController {

    let playerViews: [UIView] = (0...11).map() { _ in
        let rectView = UIView(frame: CGRect(x:0, y:0, width: 30, height: 30))
        return rectView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubView()
    }
    
    func addSubView() {
        for player in playerViews {
            player.frame.origin.y += 10
            view.addSubview(player)
        }
    }

}

