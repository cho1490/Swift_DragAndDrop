//
//  Formation.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/16.
//

struct Formation {
            
    var FW: Int
    var countFW: Int
    var isSetFW: Bool = false
    
    var MF: Int
    var countMF: Int
    var isSetMF: Bool = false
    
    var DF: Int
    var countDF: Int
    var isSetDF: Bool = false
    
    var GK: Int
    var countGK: Int
    var isSetGK: Bool = false
    
    init(FW: Int, MF: Int, DF: Int, GK: Int) {
        self.FW = FW
        countFW = FW
        self.MF = MF
        countMF = MF
        self.DF = DF
        countDF = DF
        self.GK = GK
        countGK = GK
    }
    
    mutating func getNextPosition() -> Position {
        if !isSetFW {
            countFW -= 1
            if countFW == 0 {
                isSetFW = true
            }
            
            return .FW
        }
        
        if !isSetMF {
            countMF -= 1
            if countMF == 0 {
                isSetMF = true
            }
            
            return .MF
        }
        
        if !isSetDF {
            countDF -= 1
            if countDF == 0 {
                isSetDF = true
            }
            
            return .DF
        }
        
        return .GK
    }
    
}
