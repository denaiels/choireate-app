//
//  Note.swift
//  Choireate
//
//  Created by Daniel Santoso on 05/05/21.
//

import UIKit

struct Note {
    var name: String
    var value: Int
    var lowerNote: Bool
    var upperNote: Bool
    var image: String
}

let defaultNotes: [Note] = [
    Note(name: "lowerDo", value: 1, lowerNote: true, upperNote: false, image: "1"),
    Note(name: "lowerDi", value: 2, lowerNote: true, upperNote: false, image: "1up"),
    Note(name: "lowerRe", value: 3, lowerNote: true, upperNote: false, image: "2"),
    Note(name: "lowerRi", value: 4, lowerNote: true, upperNote: false, image: "2up"),
    Note(name: "lowerMi", value: 5, lowerNote: true, upperNote: false, image: "3"),
    Note(name: "lowerFa", value: 6, lowerNote: true, upperNote: false, image: "4"),
    Note(name: "lowerFis", value: 7, lowerNote: true, upperNote: false, image: "4up"),
    Note(name: "lowerSol", value: 8, lowerNote: true, upperNote: false, image: "5"),
    Note(name: "lowerSel", value: 9, lowerNote: true, upperNote: false, image: "5up"),
    Note(name: "lowerLa", value: 10, lowerNote: true, upperNote: false, image: "6"),
    Note(name: "lowerLeh", value: 11, lowerNote: true, upperNote: false, image: "6up"),
    Note(name: "lowerSi", value: 12, lowerNote: true, upperNote: false, image: "7"),
    Note(name: "Do", value: 13, lowerNote: false, upperNote: false, image: "1"),
    Note(name: "Di", value: 14, lowerNote: false, upperNote: false, image: "1up"),
    Note(name: "Re", value: 15, lowerNote: false, upperNote: false, image: "2"),
    Note(name: "Ri", value: 16, lowerNote: false, upperNote: false, image: "2up"),
    Note(name: "Mi", value: 17, lowerNote: false, upperNote: false, image: "3"),
    Note(name: "Fa", value: 18, lowerNote: false, upperNote: false, image: "4"),
    Note(name: "Fis", value: 19, lowerNote: false, upperNote: false, image: "4up"),
    Note(name: "Sol", value: 20, lowerNote: false, upperNote: false, image: "5"),
    Note(name: "Sel", value: 21, lowerNote: false, upperNote: false, image: "5up"),
    Note(name: "La", value: 22, lowerNote: false, upperNote: false, image: "6"),
    Note(name: "Leh", value: 23, lowerNote: false, upperNote: false, image: "6up"),
    Note(name: "Si", value: 24, lowerNote: false, upperNote: false, image: "7"),
    Note(name: "upperDo", value: 25, lowerNote: false, upperNote: true, image: "1"),
    Note(name: "upperDi", value: 26, lowerNote: false, upperNote: true, image: "1up"),
    Note(name: "upperRe", value: 27, lowerNote: false, upperNote: true, image: "2"),
    Note(name: "upperRi", value: 28, lowerNote: false, upperNote: true, image: "2up"),
    Note(name: "upperMi", value: 29, lowerNote: false, upperNote: true, image: "3"),
    Note(name: "upperFa", value: 30, lowerNote: false, upperNote: true, image: "4"),
    Note(name: "upperFis", value: 31, lowerNote: false, upperNote: true, image: "4up"),
    Note(name: "upperSol", value: 32, lowerNote: false, upperNote: true, image: "5"),
    Note(name: "upperSel", value: 33, lowerNote: false, upperNote: true, image: "5up"),
    Note(name: "upperLa", value: 34, lowerNote: false, upperNote: true, image: "6"),
    Note(name: "upperLeh", value: 35, lowerNote: false, upperNote: true, image: "6up"),
    Note(name: "upperSi", value: 36, lowerNote: false, upperNote: true, image: "7"),
]
