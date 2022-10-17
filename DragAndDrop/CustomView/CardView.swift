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
            playerDefaultView.centerYAnchor.constraint(equalTo: centerYAnchor),
            playerDefaultView.centerXAnchor.constraint(equalTo: centerXAnchor),
            playerDefaultView.heightAnchor.constraint(equalToConstant: frame.height),
            playerDefaultView.widthAnchor.constraint(equalToConstant: frame.width)
        ])
        
        addSubview(playerView)
        playerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            playerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            playerView.heightAnchor.constraint(equalToConstant: frame.height),
            playerView.widthAnchor.constraint(equalToConstant: frame.width)
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
