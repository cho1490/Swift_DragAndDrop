//
//  PlayerDefaultView.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/16.
//

import UIKit

class PlayerDefaultView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        isUserInteractionEnabled = false
        backgroundColor = .yellow
    }
    
}
