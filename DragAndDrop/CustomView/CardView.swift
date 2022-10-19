//
//  CardView.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/16.
//

import UIKit

class CardView: UIView {
    
    private var position: Position = .GK
    
    let playerDefaultView: PlayerDefaultView = {
        let playerDefaultView = PlayerDefaultView()
        return playerDefaultView
    }()
    
    let playerView: PlayerView = {
       let playerView = PlayerView()
        playerView.isHidden = true
        return playerView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        addSubview(playerDefaultView)
        playerDefaultView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playerDefaultView.leadingAnchor.constraint(equalTo: leadingAnchor),
            playerDefaultView.topAnchor.constraint(equalTo: topAnchor),
            playerDefaultView.trailingAnchor.constraint(equalTo: trailingAnchor),
            playerDefaultView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        addSubview(playerView)
        playerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            playerView.topAnchor.constraint(equalTo: topAnchor),
            playerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            playerView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])                
    }
    
    func setPosition(position: Position) {
        self.position = position
    }
    
    func getPosition() -> Position {
        return position
    }
    
    func setPlayer(player: Player) {
        playerView.setPlayer(player: player)
        playerDefaultView.isHidden = true
        playerView.isHidden = false
    }
    
}
