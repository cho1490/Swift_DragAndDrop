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
        
        selfView.setCardView()
    }
    
}

