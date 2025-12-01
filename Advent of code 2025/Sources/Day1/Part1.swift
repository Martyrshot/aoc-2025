//
//  Part1.swift
//  Advent of code 2025
//
//  Created by Jason Goertzen on 2025-11-30.
//

import ArgumentParser
import Foundation
import Utilities

struct Part1: ParsableCommand {
    func run() throws {
        let result = try! part1Solution()
        print("We hit zero \(result) times!")
    }
}

func part1Solution() throws -> Int {
    var lock = Part1CombinationLock()
    let data = try! FileReader.read(name: "input.txt", module: "Day1")
    for line in data.split(separator: "\n", omittingEmptySubsequences: true) {
        let direction = line[line.startIndex]
        guard let amount = Int(line.dropFirst()) else {
            throw NSError(domain: "Failed to get amount of turns from file", code: -1)
        }
        
        if direction == "R" {
            _ = lock.turnRight(amount: amount)
        } else if direction == "L" {
            _ = lock.turnLeft(amount: amount)
        }
    }
    return lock.numTimesPointingToZero
}


struct Part1CombinationLock {
    var value: Int = 50
    let numValues: Int = 100
    var numTimesPointingToZero: Int = 0
    
    mutating func turnLeft(amount: Int) -> Int {
        value = (value - amount) % numValues
        if value == 0 {
            numTimesPointingToZero += 1
        }
        return value
    }
    mutating func turnRight(amount: Int) -> Int {
        value = (value + amount) % numValues
        if value == 0 {
            numTimesPointingToZero += 1
        }
        return value
    }
}
