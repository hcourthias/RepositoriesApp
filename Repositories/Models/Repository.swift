//
//  Repository.swift
//  Repositories
//
//  Created by Hugo Courthias on 04/06/2020.
//  Copyright © 2020 Hugo Courthias. All rights reserved.
//

import Foundation

struct Repository {
    let name: String;
    let imageUrl: String;
    let desc: String?;
    
    init(name: String, imageUrl: String, desc: String? = nil) {
        self.name = name
        self.imageUrl = imageUrl
        self.desc = desc
    }
}

extension Repository {
    static func all() -> [Repository] {
        return [
            Repository(name: "Epicture", imageUrl: "epicture", desc: "a photo finder and browsing application for imgur"),
            Repository(name: "Area", imageUrl: "area", desc: "A school project where we have to recreate IFTTT"),
            Repository(name: "EpiTracker", imageUrl: "epitracker", desc: "📱Tracker for Epitech Student (GPA, Log Time & Credits)"),
            Repository(name: "RandomizeYourChoice", imageUrl: "randomizeyourchoice", desc: "❔ RandomizeYourChoice is a random picker app for Android."),
            Repository(name: "Epicar", imageUrl: "epicar", desc: "🏎Car made of a Raspberry Pi 3 B"),
        ]
    }
}
