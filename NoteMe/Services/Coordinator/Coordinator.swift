//
//  Coordinator.swift
//  NoteMe
//
//  Created by PavelKrm on 21.11.23.
//

import UIKit

class Coordinator {
    
    var onDidFinish: ((Coordinator) -> Void)?
    var children: [Coordinator] = []
    
    func start() -> UIViewController {
        
        fatalError("Should be overriden")
    }
    
    func finish() {
        
        fatalError("Should be overriden")
    }
    
    func removeChild(_ child: Coordinator) {
        
        children.removeAll { child == $0 }
    }
}

extension Coordinator: Equatable {
    
    static func == (lhs: Coordinator, rhs: Coordinator) -> Bool {
        return lhs === rhs
    }
}