//
//  main.swift
//  Advent of code 2025
//
//  Created by Jason Goertzen on 2025-11-30.
//

import ArgumentParser
import Day1

@main
struct AdventOfCode2025: ParsableCommand {
    static let configuration = CommandConfiguration(
        subcommands: [Day1Command.self]
    )
}
