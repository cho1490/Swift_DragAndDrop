//
//  Position.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/14.
//

enum Position {
        
    case ST
    case CF
    case LF
    case RF
    case LW
    case RW
    
    case CAM
    case LM
    case RM
    case CM
    case CDM
        
    case CB
    case LWB
    case RWB
    case LB
    case RB
    case SW
            
    case FW
    case MF
    case DF
    case GK
    
    func getLine() -> Position {
        switch self {
        case .ST, .CF, .LF, .RF, .LW, .RW, .FW:
            return .FW
        case .CAM, .LM, .RM, .CM, .CDM, .MF:
            return .MF
        case .CB, .LWB, .RWB, .LB, .RB, .SW, .DF:
            return .DF
        case .GK:
            return .GK            
        }
    }
        
}
