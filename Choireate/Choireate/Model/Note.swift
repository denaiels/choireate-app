//
//  Note.swift
//  Choireate
//
//  Created by Daniel Santoso on 05/05/21.
//

import UIKit

enum NoteType {
    case blank
    case dot
    case zero
    case myDo
    case myDi
    case myRe
    case myRi
    case myMi
    case myFa
    case myFi
    case mySol
    case mySel
    case myLa
    case myLeh
    case mySi
    
}

struct Note {
    var name: NoteType
    var lowerNote: Bool
    var upperNote: Bool
    var image: String
    var imageBlack: String
    var audioFileName: String
}

//let defaultNotes: [Note] = [
//    Note(name: "lowerDo", value: 1, lowerNote: true, upperNote: false, image: "1", imageBlack: "1 black"),
//    Note(name: "lowerDi", value: 2, lowerNote: true, upperNote: false, image: "1up", imageBlack: "1up black"),
//    Note(name: "lowerRe", value: 3, lowerNote: true, upperNote: false, image: "2", imageBlack: "2 black"),
//    Note(name: "lowerRi", value: 4, lowerNote: true, upperNote: false, image: "2up", imageBlack: "2up black"),
//    Note(name: "lowerMi", value: 5, lowerNote: true, upperNote: false, image: "3", imageBlack: "3 black"),
//    Note(name: "lowerFa", value: 6, lowerNote: true, upperNote: false, image: "4", imageBlack: "4 black"),
//    Note(name: "lowerFi", value: 7, lowerNote: true, upperNote: false, image: "4up", imageBlack: "4up black"),
//    Note(name: "lowerSol", value: 8, lowerNote: true, upperNote: false, image: "5", imageBlack: "5 black"),
//    Note(name: "lowerSel", value: 9, lowerNote: true, upperNote: false, image: "5up", imageBlack: "5up black"),
//    Note(name: "lowerLa", value: 10, lowerNote: true, upperNote: false, image: "6", imageBlack: "6 black"),
//    Note(name: "lowerLeh", value: 11, lowerNote: true, upperNote: false, image: "6up", imageBlack: "6up black"),
//    Note(name: "lowerSi", value: 12, lowerNote: true, upperNote: false, image: "7", imageBlack: "7 black"),
//    Note(name: "Do", value: 13, lowerNote: false, upperNote: false, image: "1", imageBlack: "1 black"),
//    Note(name: "Di", value: 14, lowerNote: false, upperNote: false, image: "1up", imageBlack: "1up black"),
//    Note(name: "Re", value: 15, lowerNote: false, upperNote: false, image: "2", imageBlack: "2 black"),
//    Note(name: "Ri", value: 16, lowerNote: false, upperNote: false, image: "2up", imageBlack: "2up black"),
//    Note(name: "Mi", value: 17, lowerNote: false, upperNote: false, image: "3", imageBlack: "3 black"),
//    Note(name: "Fa", value: 18, lowerNote: false, upperNote: false, image: "4", imageBlack: "4 black"),
//    Note(name: "Fi", value: 19, lowerNote: false, upperNote: false, image: "4up", imageBlack: "4up black"),
//    Note(name: "Sol", value: 20, lowerNote: false, upperNote: false, image: "5", imageBlack: "5 black"),
//    Note(name: "Sel", value: 21, lowerNote: false, upperNote: false, image: "5up", imageBlack: "5up black"),
//    Note(name: "La", value: 22, lowerNote: false, upperNote: false, image: "6", imageBlack: "6 black"),
//    Note(name: "Leh", value: 23, lowerNote: false, upperNote: false, image: "6up", imageBlack: "6up black"),
//    Note(name: "Si", value: 24, lowerNote: false, upperNote: false, image: "7", imageBlack: "7 black"),
//    Note(name: "upperDo", value: 25, lowerNote: false, upperNote: true, image: "1", imageBlack: "1 black"),
//    Note(name: "upperDi", value: 26, lowerNote: false, upperNote: true, image: "1up", imageBlack: "1up black"),
//    Note(name: "upperRe", value: 27, lowerNote: false, upperNote: true, image: "2", imageBlack: "2 black"),
//    Note(name: "upperRi", value: 28, lowerNote: false, upperNote: true, image: "2up", imageBlack: "2up black"),
//    Note(name: "upperMi", value: 29, lowerNote: false, upperNote: true, image: "3", imageBlack: "3 black"),
//    Note(name: "upperFa", value: 30, lowerNote: false, upperNote: true, image: "4", imageBlack: "4 black"),
//    Note(name: "upperFi", value: 31, lowerNote: false, upperNote: true, image: "4up", imageBlack: "4up black"),
//    Note(name: "upperSol", value: 32, lowerNote: false, upperNote: true, image: "5", imageBlack: "5 black"),
//    Note(name: "upperSel", value: 33, lowerNote: false, upperNote: true, image: "5up", imageBlack: "5up black"),
//    Note(name: "upperLa", value: 34, lowerNote: false, upperNote: true, image: "6", imageBlack: "6 black"),
//    Note(name: "upperLeh", value: 35, lowerNote: false, upperNote: true, image: "6up", imageBlack: "6up black"),
//    Note(name: "upperSi", value: 36, lowerNote: false, upperNote: true, image: "7", imageBlack: "7 black"),
//]

let defaultBlank: [Note] = [
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank"),
    Note(name: .blank, lowerNote: false, upperNote: false, image: "Blank", imageBlack: "Blank", audioFileName: "Blank")
    
]
