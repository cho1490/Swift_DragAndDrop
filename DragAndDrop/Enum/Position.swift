//
//  Position.swift
//  DragAndDrop
//
//  Created by 조상현 on 2022/10/14.
//

enum Position {
        
    // FW .LW, .LS, .ST, .RS, .RW, .LF, .CF, .RF
    case LW
    case LS
    case ST
    case RS
    case RW
    
    case LF
    case CF
    case RF
    // FW
    
    // MF .LM, .LAM, .CAM, .RAM, .RM, .LCM, .CM, .RCM, .LDM, .CDM, .RDM
    case LM
    case LAM
    case CAM
    case RAM
    case RM
    
    case LCM
    case CM
    case RCM
    
    case LDM
    case CDM
    case RDM
    // MF
    
    // DF .LWB, .LCB, .CB, .RCB, .RWB, .LB, .RB, .SW
    case LWB
    case LCB
    case CB
    case RCB
    case RWB
    
    case LB
    case RB
    case SW
    // DF
            
    case FW
    case MF
    case DF
    
    // GK
    case GK
    
    func getLine() -> Position {
        switch self {
        case .LW, .LS, .ST, .RS, .RW, .LF, .CF, .RF, .FW:
            return .FW
        case .LM, .LAM, .CAM, .RAM, .RM, .LCM, .CM, .RCM, .LDM, .CDM, .RDM, .MF:
            return .MF
        case .LWB, .RWB, .LB, .LCB, .CB, .RCB, .RB, .SW, .DF:
            return .DF
        case .GK:
            return .GK            
        }
    }
        
}
