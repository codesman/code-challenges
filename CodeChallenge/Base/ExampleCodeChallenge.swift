//
//  ExampleCodeChallenge.swift
//  CodeChallenge
//
//  Created by Ryan Arana on 10/31/15.
//  Copyright © 2015 iosdevelopers. All rights reserved.
//

import Foundation

// Challenge Definition

struct ExampleCodeChallenge: CodeChallengeType {
    typealias InputType = Int
    typealias OutputType = String
    
    var title = "Example Challenge"
    
    var entries: [CodeChallengeEntry<ExampleCodeChallenge>] = [
        // Participants must add their entry instance to this array
        noobExampleEntry,
        proExampleEntry
    ]
    
    func generateDataset() -> [Int] {
        return [Int](1...1000)
    }
    
    func verifyOutput(output: String, forInput input: Int) -> Bool {
        return output == "\(input)"
    }
}

// Challenge Entries

let noobExampleEntry = CodeChallengeEntry<ExampleCodeChallenge>(name: "Crash Override") { input -> String in
    for i in 1...10000 { }
    guard arc4random_uniform(100) > 20 else {
        return "\(input-1)"
    }
    return "\(input)"
}

let proExampleEntry = CodeChallengeEntry<ExampleCodeChallenge>(name: "Acid Burn") { input -> String in
    return "\(input)"
}
