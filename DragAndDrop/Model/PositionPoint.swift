//
//  PositionPoint.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/23.
//

import Foundation

struct PositionPoint {
    
    // FW
    var startFW: CGPoint = CGPoint(x: 0, y: 0)
    var endFW: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLW: CGPoint = CGPoint(x: 0, y: 0)
    var endLW: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLS: CGPoint = CGPoint(x: 0, y: 0)
    var endLS: CGPoint = CGPoint(x: 0, y: 0)
    
    var startST: CGPoint = CGPoint(x: 0, y: 0)
    var endST: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRS: CGPoint = CGPoint(x: 0, y: 0)
    var endRS: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRW: CGPoint = CGPoint(x: 0, y: 0)
    var endRW: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLF: CGPoint = CGPoint(x: 0, y: 0)
    var endLF: CGPoint = CGPoint(x: 0, y: 0)
    
    var startCF: CGPoint = CGPoint(x: 0, y: 0)
    var endCF: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRF: CGPoint = CGPoint(x: 0, y: 0)
    var endRF: CGPoint = CGPoint(x: 0, y: 0)
    // FW
    
    // MF
    var startMF: CGPoint = CGPoint(x: 0, y: 0)
    var endMF: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLM: CGPoint = CGPoint(x: 0, y: 0)
    var endLM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLAM: CGPoint = CGPoint(x: 0, y: 0)
    var endLAM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startCAM: CGPoint = CGPoint(x: 0, y: 0)
    var endCAM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRAM: CGPoint = CGPoint(x: 0, y: 0)
    var endRAM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRM: CGPoint = CGPoint(x: 0, y: 0)
    var endRM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLCM: CGPoint = CGPoint(x: 0, y: 0)
    var endLCM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startCM: CGPoint = CGPoint(x: 0, y: 0)
    var endCM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRCM: CGPoint = CGPoint(x: 0, y: 0)
    var endRCM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLDM: CGPoint = CGPoint(x: 0, y: 0)
    var endLDM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startCDM: CGPoint = CGPoint(x: 0, y: 0)
    var endCDM: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRDM: CGPoint = CGPoint(x: 0, y: 0)
    var endRDM: CGPoint = CGPoint(x: 0, y: 0)
    // MF
    
    // DF
    var startDF: CGPoint = CGPoint(x: 0, y: 0)
    var endDF: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLWB: CGPoint = CGPoint(x: 0, y: 0)
    var endLWB: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRWB: CGPoint = CGPoint(x: 0, y: 0)
    var endRWB: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLB: CGPoint = CGPoint(x: 0, y: 0)
    var endLB: CGPoint = CGPoint(x: 0, y: 0)
    
    var startLCB: CGPoint = CGPoint(x: 0, y: 0)
    var endLCB: CGPoint = CGPoint(x: 0, y: 0)
    
    var startCB: CGPoint = CGPoint(x: 0, y: 0)
    var endCB: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRCB: CGPoint = CGPoint(x: 0, y: 0)
    var endRCB: CGPoint = CGPoint(x: 0, y: 0)
    
    var startRB: CGPoint = CGPoint(x: 0, y: 0)
    var endRB: CGPoint = CGPoint(x: 0, y: 0)
    
    var startSW: CGPoint = CGPoint(x: 0, y: 0)
    var endSW: CGPoint = CGPoint(x: 0, y: 0)
    // DF
    
    // GK
    var startGK: CGPoint = CGPoint(x: 0, y: 0)
    var endGK: CGPoint = CGPoint(x: 0, y: 0)
    // GK
    
    init(frame: CGRect) {
        let height = frame.height
        let width = frame.width
        
        // Y ZONE
        let zone = height / 4
        startFW = CGPoint(x: 0, y: 0)
        endFW = CGPoint(x: frame.width, y: zone)
                
        startMF = CGPoint(x: 0, y: endFW.y)
        endMF = CGPoint(x: frame.width, y: zone * 2)
        
        startDF = CGPoint(x: 0, y: endMF.y)
        endDF = CGPoint(x: frame.width, y: zone * 3)
        
        startGK = CGPoint(x: 0, y: endDF.y)
        endGK = CGPoint(x: frame.width, y: zone * 4)
        // Y ZONE
        
        // Position ZONE
        // FW
        let widthLWRW = width / 4
        startLW = CGPoint(x: startFW.x, y: startFW.y)
        endLW = CGPoint(x: startFW.x + widthLWRW, y: endFW.y)
        print("LW.s: \(startLW.x), \(startLW.y)")
        print("LW.e: \(endLW.x), \(endLW.y)")
        
        let heightST = (endFW.y - startFW.y) / 2
        let widthST = (width - (widthLWRW * 2)) / 3
        startLS = CGPoint(x: endLW.x, y: startFW.y)
        endLS = CGPoint(x: endLW.x + widthST, y: startFW.y + heightST)
        print("LS.s: \(startLS.x), \(startLS.y)")
        print("LS.e: \(endLS.x), \(endLS.y)")
    
        startST = CGPoint(x: endLS.x, y: startFW.y)
        endST = CGPoint(x: endLS.x + widthST, y: startFW.y + heightST)
        
        startRS = CGPoint(x: endST.x, y: startFW.y)
        endRS = CGPoint(x: endST.x + widthST, y: startFW.y + heightST)
        
        startRW = CGPoint(x: endFW.x - widthLWRW, y: startFW.y)
        endRW = CGPoint(x: endFW.x, y: endFW.y)
        print("LW.s: \(startRW.x), \(startRW.y)")
        print("LW.e: \(endRW.x), \(endRW.y)")
        
        let widthCF = (width - (widthLWRW * 2)) / 3
        startLF = CGPoint(x: endLW.x, y: startFW.y + heightST)
        endLF = CGPoint(x: endLW.x + widthCF, y: endFW.y)
        print("LF.s: \(startLF.x), \(startLF.y)")
        print("LF.e: \(endLF.x), \(endLF.y)")
        
        startCF = CGPoint(x: endLF.x, y: startFW.y + heightST)
        endCF = CGPoint(x: endLF.x + widthCF, y: endFW.y)
        
        startRF = CGPoint(x: endCF.x, y: startFW.y + heightST)
        endRF = CGPoint(x: endFW.x - widthLWRW, y: endFW.y)
        // FW
        
        // MF
        // MF
        
        // DF
        // DF
        
        // GK
        // GK
        // Position ZONE
    }
    
    func getPosition(point: CGPoint) -> Position {
        let x = point.x
        let y = point.y
        
        print("x: \(x), y: \(y)")
        
        if startLW.x <= x && x <= endLW.x && startLW.y <= y && y <= endLW.y {
            return .LW
        }
        
        if startLS.x <= x && x <= endLS.x && startLS.y <= y && y <= endLS.y {
            return .LS
        }
        
        if startST.x <= x && x <= endST.x && startST.y <= y && y <= endST.y {
            return .ST
        }
        
        if startRS.x <= x && x <= endRS.x && startRS.y <= y && y <= endRS.y {
            return .RS
        }
        
        if startRW.x <= x && x <= endRW.x && startRW.y <= y && y <= endRW.y {
            return .RW
        }

        if startLF.x <= x && x <= endLF.x && startLF.y <= y && y <= endLF.y {
            return .LF
        }
        
        if startCF.x <= x && x <= endCF.x && startCF.y <= y && y <= endCF.y {
            return .CF
        }
        
        if startRF.x <= x && x <= endRF.x && startRF.y <= y && y <= endRF.y {
            return .RF
        }
        
        return .GK
    }
    
}
