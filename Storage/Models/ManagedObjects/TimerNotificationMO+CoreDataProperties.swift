//
//  TimerNotificationMO+CoreDataProperties.swift
//  Storage
//
//  Created by PavelKrm on 21.03.24.
//
//

import Foundation
import CoreData


extension TimerNotificationMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TimerNotificationMO> {
        return NSFetchRequest<TimerNotificationMO>(entityName: "TimerNotificationMO")
    }

    @NSManaged public var timeLeft: Double

}
