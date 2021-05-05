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
    @IBOutlet weak var upperDotNoteImageView: UIImageView!
    @IBOutlet weak var lowerDotNoteImageView: UIImageView!
    
    static let identifier = "NoteCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "NoteCollectionViewCell",
                     bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with note: Note) {
        self.noteImageView.image = UIImage(named: note.image)
        if note.lowerNote == false {
            self.lowerDotNoteImageView.isHidden = true
        }
        
        if note.upperNote == false {
            self.upperDotNoteImageView.isHidden = true
        }
    }

}
