//
//  SongListViewController.swift
//  Homework 14
//
//  Created by salome on 30.10.23.
//

import UIKit

class Song {
    let name: String
    let singer: String
    
    init(name: String, singer: String) {
        self.name = name
        self.singer = singer
    }
    
    
    static let dummyData = [
        Song(
            name: "Fix You",
            singer: "Coldplay"
        ),
        Song(
            name: "Bohemian Rhapsody",
            singer: "Queen"
        ),
        Song(
            name: "Bohemian Rhapsody",
            singer: "Queen"
        ),
        Song(
            name: "Feeling Good",
            singer: "Muse"
        ),
        Song(
            name: "Lost on You",
            singer: "LP"
        ),
        Song(
            name: "Snowman",
            singer: "Sia"
        ),
        Song(
            name: "Believer",
            singer: "Imagine Dragons"
        ),
        Song(
            name: "Dancing in the Moonlight",
            singer: "Toploader"
        ),
        Song(
            name: "Imagine",
            singer: "John Lennon"
        ),
        Song(
            name: "Back to back",
            singer: "Amy Winehouse"
        ),

    ]
}
