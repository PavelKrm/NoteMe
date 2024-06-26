//
//  AllNotificationStorage+Home.swift
//  NoteMe
//
//  Created by PavelKrm on 26.03.24.
//

import Foundation
import Storage

extension AllNotificationStorage: HomeStorageUseCase {
    
    func delete(dto: any DTODescription) {
        self.delete(dto: dto, completion: nil)
    }
}
