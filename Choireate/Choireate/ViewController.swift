//
//  ViewController.swift
//  Choireate
//
//  Created by Daniel Santoso on 05/05/21.
//

import UIKit
import AVFoundation

var selectedIndex: Int = 0
var chosenNoteName: NoteType = .blank
var chosenNoteImage: String = "Blank"
var chosenNoteImageBlack: String = "Blank"
var chosenNoteUpperNote: Bool = false
var chosenNoteLowerNote: Bool = false
var chosenAudioFileName: String = "blank"

protocol ViewControllerDelegate {
    func didSetNote(_ note: Note)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var delegate: ViewControllerDelegate?
    
    // MARK: - Outlets
    
    // TableView
    @IBOutlet weak var table: UITableView!
    
    // Keyboard
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var oneUpButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var twoUpButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fourUpButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var fiveUpButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sixUpButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var upperDotButton: UIButton!
    @IBOutlet weak var lowerDotButton: UIButton!
    
    // Playback
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backwardsButton: UIButton!
    
    
    
    // MARK: - Model
    
    var models = [Note]()
    var player: AVAudioPlayer?
    
    
    
    
    // MARK: - Variables

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDefaultModel()
        print(models)
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        
        table.delegate = self
        table.dataSource = self
    }
    
    
    
    
    // MARK: - Actions
    
    // Keyboard
    @IBAction func infoButtonDidTap(_ sender: UIButton) {
    }
    @IBAction func okButtonDidTap(_ sender: UIButton) {
        if chosenNoteUpperNote == true {
            let octave: String = "upper"
            let audio = octave + chosenAudioFileName
            chosenAudioFileName = audio
        }
        
        if chosenNoteLowerNote == true {
            let octave: String = "lower"
            let audio = octave + chosenAudioFileName
            chosenAudioFileName = audio
        }
        
        setNoteOnIndex()
        table.reloadData()
        
    }
    @IBAction func dotButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .dot
        chosenNoteImage = "DotSquare"
        chosenNoteImageBlack = "DotSquareBlack"
        chosenAudioFileName = "Blank"
    }
    @IBAction func zeroButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .zero
        chosenNoteImage = "0"
        chosenNoteImageBlack = "0 black"
        chosenAudioFileName = "Blank"
    }
    @IBAction func oneButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myDo
        chosenNoteImage = "1"
        chosenNoteImageBlack = "1 black"
        chosenAudioFileName = "Do"
    }
    @IBAction func oneUpButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myDi
        chosenNoteImage = "1up"
        chosenNoteImageBlack = "1up black"
        chosenAudioFileName = "Di"
    }
    @IBAction func twoButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myRe
        chosenNoteImage = "2"
        chosenNoteImageBlack = "2 black"
        chosenAudioFileName = "Re"
    }
    @IBAction func twoUpButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myRi
        chosenNoteImage = "2up"
        chosenNoteImageBlack = "2up black"
        chosenAudioFileName = "Ri"
    }
    @IBAction func threeButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myMi
        chosenNoteImage = "3"
        chosenNoteImageBlack = "3 black"
        chosenAudioFileName = "Mi"
    }
    @IBAction func fourButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myFa
        chosenNoteImage = "4"
        chosenNoteImageBlack = "4 black"
        chosenAudioFileName = "Fa"
    }
    @IBAction func fourUpButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myFi
        chosenNoteImage = "4up"
        chosenNoteImageBlack = "4up black"
        chosenAudioFileName = "Fi"
    }
    @IBAction func fiveButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .mySol
        chosenNoteImage = "5"
        chosenNoteImageBlack = "5 black"
        chosenAudioFileName = "Sol"
    }
    @IBAction func fiveUpButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .mySel
        chosenNoteImage = "5up"
        chosenNoteImageBlack = "5up black"
        chosenAudioFileName = "Sel"
    }
    @IBAction func sixButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myLa
        chosenNoteImage = "6"
        chosenNoteImageBlack = "6 black"
        chosenAudioFileName = "La"
    }
    @IBAction func sixUpButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .myLeh
        chosenNoteImage = "6up"
        chosenNoteImageBlack = "6up black"
        chosenAudioFileName = "Leh"
    }
    @IBAction func sevenButtonDidTap(_ sender: UIButton) {
        chosenNoteName = .mySi
        chosenNoteImage = "7"
        chosenNoteImageBlack = "7 black"
        chosenAudioFileName = "Si"
    }
    @IBAction func upperDotButtonDidTap(_ sender: UIButton) {
        if chosenNoteLowerNote == true {
            chosenNoteLowerNote = false
        }
        chosenNoteUpperNote = true
    }
    @IBAction func lowerDotButtonDidTap(_ sender: UIButton) {
        if chosenNoteUpperNote == true {
            chosenNoteUpperNote = false
        }
        chosenNoteLowerNote = true
    }
    
    // Playback
    @IBAction func playButtonDidTap(_ sender: UIButton) {
        if let player = player, player.isPlaying {
            // stop playback
        } else {
            // set up and play
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                
            } catch {
                print("audio cannot be played")
            }
        }
    }
    @IBAction func backwardsButtonDidTap(_ sender: UIButton) {
    }
    
    
    
    
    
    // MARK: - Helper Functions
    
    func getDefaultModel() {
        models.append(contentsOf: defaultBlank)
    }
    
    func setNoteOnIndex() {
        
        self.models[selectedIndex] = Note(name: chosenNoteName, lowerNote: chosenNoteLowerNote, upperNote: chosenNoteUpperNote, image: chosenNoteImage, imageBlack: chosenNoteImageBlack, audioFileName: chosenAudioFileName)
//        delegate?.didSetNote(Note(name: chosenNoteName, lowerNote: chosenNoteLowerNote, upperNote: chosenNoteUpperNote, image: chosenNoteImage, imageBlack: chosenNoteImageBlack, audioFileName: chosenAudioFileName))
    }
    

    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        cell.collectionView.reloadData()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 189
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = table.cellForRow(at: indexPath) as? CollectionTableViewCell {
            cell.backgroundColor = UIColor.cpBlack
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = table.cellForRow(at: indexPath) as? CollectionTableViewCell {
            cell.backgroundColor = UIColor.cpBlack
        }
    }
    
    
    
}

