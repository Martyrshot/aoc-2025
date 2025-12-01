//
//  FileReader.swift
//  Advent of code 2025
//
//  Created by Jason Goertzen on 2025-12-01.
//

import Foundation

public struct FileReader {
    public init() {}
    
    public static func read(name: String, module: String) throws -> String {
        let fileLocation = URL(fileURLWithPath: #filePath).deletingLastPathComponent().deletingLastPathComponent().appendingPathComponent(module)
        let filePath = fileLocation.appendingPathComponent(name)
        return try! String(contentsOf: filePath, encoding: .ascii)
    }
}
