import ArgumentParser

public struct Day1Command: ParsableCommand {
    public init() {}
    public static let configuration = CommandConfiguration(
        commandName: "day1",
        subcommands: [Part1.self, Part2.self]
    )
}
