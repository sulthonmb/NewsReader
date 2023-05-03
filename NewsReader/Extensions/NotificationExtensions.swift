//
//  NotificationExtensions.swift
//  NewsReader
//
//  Created by Sulthon on 03/05/23.
//

import Foundation

extension NSNotification.Name {
    static let addReadingList: NSNotification.Name = NSNotification.Name(rawValue: "nAddReadingList")
    static let deleteReadingList: NSNotification.Name = NSNotification.Name(rawValue: "nDeleteReadingList")
}
