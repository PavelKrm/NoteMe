//
//  ContainerRegistrator.swift
//  NoteMe
//
//  Created by PavelKrm on 16.01.24.
//

import Foundation
import Storage

final class ContainerRegistrator {
    
    static func makeContainer() -> Container {
        let container = Container()
        
        container.register({ AlertService(container: container) })
        container.register({ AuthService() })
        container.register({ KeyboardHelper() })
        container.register({ InputValidator()} )
        container.register({ AuthService() })
        container.register({ AnimateConstraintsChange() })
        container.register({ DateNotificationStorage() })
        container.register({ TimerNotificationStorage() })
        container.register({ LocationNotificationStorage() })
        container.register({ FileService() })
        container.register({ NotificationService() })
        container.register({ AllNotificationStorage() })
        container.register({ FirebaseBackupService() })
        
        return container
    }
}
