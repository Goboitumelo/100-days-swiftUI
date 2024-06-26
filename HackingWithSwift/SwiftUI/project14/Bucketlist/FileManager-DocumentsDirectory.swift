//
//  FileManager-DocumentsDirectory.swift
//  Bucketlist
//
//  Created by Goboitumelo Mpuru on 25/06/2024.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
