//
//  PlayerView.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/14.
//

import UIKit

class PlayerView: UIView {
    
    private var player: Player?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        isUserInteractionEnabled = false
        backgroundColor = .blue
    }
    
    func setPlayer(player: Player) {
        self.player = player
    }
    
}
