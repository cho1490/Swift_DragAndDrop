//
//  PlayerView.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/14.
//

import UIKit

class PlayerView: UIView {
    
    var player: Player?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setPlayer(player: Player) {
        self.player = player
    }
    
}
