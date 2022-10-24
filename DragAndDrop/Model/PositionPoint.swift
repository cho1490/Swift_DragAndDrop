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
                
        let heightF = (endFW.y - startFW.y) / 2
        let widthST = (width - (widthLWRW * 2)) / 3
        startLS = CGPoint(x: endLW.x, y: startFW.y)
        endLS = CGPoint(x: endLW.x + widthST, y: startFW.y + heightF)
    
        startST = CGPoint(x: endLS.x, y: startFW.y)
        endST = CGPoint(x: endLS.x + widthST, y: startFW.y + heightF)
        
        startRS = CGPoint(x: endST.x, y: startFW.y)
        endRS = CGPoint(x: endST.x + widthST, y: startFW.y + heightF)
                
        let widthCF = (width - (widthLWRW * 2)) / 3
        startLF = CGPoint(x: endLW.x, y: startFW.y + heightF)
        endLF = CGPoint(x: endLW.x + widthCF, y: startLF.y + heightF)
        
        startCF = CGPoint(x: endLF.x, y: startFW.y + heightF)
        endCF = CGPoint(x: endLF.x + widthCF, y: endFW.y)
        
        startRF = CGPoint(x: endCF.x, y: startFW.y + heightF)
        endRF = CGPoint(x: startRF.x + widthCF, y: endFW.y)
        
        startRW = CGPoint(x: endFW.x - widthLWRW, y: startFW.y)
        endRW = CGPoint(x: endFW.x, y: endFW.y)
        // FW
        
        // MF
        let widthLMRM = width / 4
        startLM = CGPoint(x: startMF.x, y: startMF.y)
        endLM = CGPoint(x: startMF.x + widthLMRM, y: endMF.y)
        
        let heightCM = (endMF.y - startMF.y) / 3
        let widthCM = (width - (widthLMRM * 2)) / 3
        startLAM = CGPoint(x: endLM.x, y: startMF.y)
        endLAM = CGPoint(x: endLM.x + widthCM, y: startMF.y + heightCM)
        
        startCAM = CGPoint(x: endLAM.x, y: startMF.y)
        endCAM = CGPoint(x: endLAM.x + widthCM, y: startMF.y + heightCM)
        
        startRAM = CGPoint(x: endCAM.x, y: startMF.y)
        endRAM = CGPoint(x: endCAM.x + widthCM, y: startMF.y + heightCM)
        
        startLM = CGPoint(x: endLM.x, y: startMF.y + heightCM)
        endLM = CGPoint(x: endLM.x + widthCM, y: startLM.y + heightCM)
        
        startCM = CGPoint(x: endLM.x, y: startMF.y + heightCM)
        endCM = CGPoint(x: endLM.x + widthCM, y: startCM.y + heightCM)
        
        startRM = CGPoint(x: endCM.x, y: startMF.y + heightCM)
        endRM = CGPoint(x: startRM.x + widthCM, y: startRM.y + heightCM)
        
        startLDM = CGPoint(x: endLM.x, y: startMF.y + (heightCM * 2))
        endLDM = CGPoint(x: startLDM.x + widthCM, y: startLDM.y + heightCM)
        
        startCDM = CGPoint(x: endLDM.x, y: startMF.y + (heightCM * 2))
        endCDM = CGPoint(x: startCDM.x + widthCM, y: startCDM.y + heightCM)
        
        startRDM = CGPoint(x: endCDM.x, y: startMF.y + (heightCM * 2))
        endRDM = CGPoint(x: startRDM.x + widthCM, y: startRDM.y + heightCM)
        
        startRM = CGPoint(x: endMF.x - widthCM, y: startLM.y)
        endRM = CGPoint(x: endLM.x, y: endLM.y)
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
        
        if startLM.x <= x && x <= endLM.x && startLM.y <= y && y <= endLM.y {
            return .LM
        }
        
        if startLAM.x <= x && x <= endLAM.x && startLAM.y <= y && y <= endLAM.y {
            return .LAM
        }
        
        if startCAM.x <= x && x <= endCAM.x && startCAM.y <= y && y <= endCAM.y {
            return .CAM
        }
        
        if startRAM.x <= x && x <= endRAM.x && startRAM.y <= y && y <= endRAM.y {
            return .RAM
        }
        
        if startLCM.x <= x && x <= endLCM.x && startLCM.y <= y && y <= endLCM.y {
            return .LCM
        }
        
        if startCM.x <= x && x <= endCM.x && startCM.y <= y && y <= endCM.y {
            return .CM
        }
        
        if startRCM.x <= x && x <= endRCM.x && startRCM.y <= y && y <= endRCM.y {
            return .RCM
        }
        
        if startLDM.x <= x && x <= endLDM.x && startLDM.y <= y && y <= endLDM.y {
            return .LDM
        }
        
        if startCDM.x <= x && x <= endCDM.x && startCDM.y <= y && y <= endCDM.y {
            return .CDM
        }
        
        if startRDM.x <= x && x <= endRDM.x && startRDM.y <= y && y <= endRDM.y {
            return .RDM
        }
        
        if startRM.x <= x && x <= endRM.x && startRM.y <= y && y <= endRM.y {
            return .RM
        }
        
        return .GK
    }
    
}
