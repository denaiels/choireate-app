//
//  NoteCollectionViewCell.swift
//  Choireate
//
//  Created by Daniel Santoso on 05/05/21.
//

import UIKit

class NoteCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var beatLabel: UILabel!
    @IBOutlet weak var noteImageView: UIImageView!
    @IBOutlet weak var noteBlackImageView: UIImageView!
    @IBOutlet weak var upperDotNoteImageView: UIImageView!
    @IBOutlet weak var lowerDotNoteImageView: UIImageView!
    @IBOutlet weak var upperDotNoteBlackImageView: UIImageView!
    @IBOutlet weak var lowerDotNoteBlackImageView: UIImageView!
    
    static let identifier = "NoteCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "NoteCollectionViewCell",
                     bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        let blackView = UIView(frame: bounds)
//        blackView.backgroundColor = UIColor.cpBlack
//        self.backgroundView = blackView
//        
//        let lightRedView = UIView(frame: bounds)
//        lightRedView.backgroundColor = UIColor.cpLightRed
//        self.selectedBackgroundView = lightRedView
        
        self.beatLabel.textColor = UIColor.cpWhite
        self.noteBlackImageView.isHidden = true
        self.upperDotNoteBlackImageView.isHidden = true
        self.lowerDotNoteBlackImageView.isHidden = true
        
    }
    
    public func configure(with note: Note) {
        self.upperDotNoteImageView.image = UIImage(named: "DotNote")
        self.lowerDotNoteImageView.image = UIImage(named: "DotNote")
        self.upperDotNoteBlackImageView.image = UIImage(named: "DotNoteBlack")
        self.lowerDotNoteBlackImageView.image = UIImage(named: "DotNoteBlack")
        self.noteImageView.image = UIImage(named: note.image)
        self.noteBlackImageView.image = UIImage(named: note.imageBlack)
        
        if note.lowerNote == false {
            self.lowerDotNoteImageView.isHidden = true
        }
        
        if note.upperNote == false {
            self.upperDotNoteImageView.isHidden = true
        }
    }

}
