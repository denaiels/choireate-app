//
//  CollectionTableViewCell.swift
//  Choireate
//
//  Created by Daniel Santoso on 05/05/21.
//

import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    static let identifier = "CollectionTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionTableViewCell",
                     bundle: nil)
    }
    
    func configure(with models: [Note]) {
        self.models = models
        collectionView.reloadData()
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var models = [Note]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(NoteCollectionViewCell.nib(), forCellWithReuseIdentifier: NoteCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let blackView = UIView(frame: bounds)
        blackView.backgroundColor = nil
        self.backgroundView = blackView
        self.selectedBackgroundView = blackView
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Collection View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NoteCollectionViewCell.identifier, for: indexPath) as! NoteCollectionViewCell
        
        cell.configure(with: models[indexPath.row])
        cell.beatLabel.text = "\(indexPath.row + 1)"
        cell.upperDotNoteImageView.image = UIImage(named: "DotNote")
        cell.lowerDotNoteImageView.image = UIImage(named: "DotNote")
        cell.upperDotNoteBlackImageView.image = UIImage(named: "DotNoteBlack")
        cell.lowerDotNoteBlackImageView.image = UIImage(named: "DotNoteBlack")
        cell.upperDotNoteBlackImageView.isHidden = true
        cell.lowerDotNoteBlackImageView.isHidden = true
//        cell.backgroundColor = UIColor.blue
        
        
        if indexPath.row == 0 {
            cell.addBorders(edges: [.left], color: .cpRed, thickness: 1)
        } else {
            cell.addBorders(edges: [.left], color: .cpGray, thickness: 1)
        }
        cell.addBorders(edges: [.right], color: .cpGray, thickness: 1)
        
//        cell.layer.borderWidth = 1
//        cell.layer.borderColor = UIColor.cpGray.cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 30, height: 189)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? NoteCollectionViewCell {
            selectedIndex = indexPath.row
            
            cell.contentView.backgroundColor = UIColor.cpLightRed
            cell.beatLabel.textColor = UIColor.cpBlack
            cell.noteBlackImageView.isHidden = false
            
            if cell.upperDotNoteImageView.isHidden == false {
                cell.upperDotNoteBlackImageView.isHidden = false
            }
            
            if cell.lowerDotNoteImageView.isHidden == false {
                cell.lowerDotNoteBlackImageView.isHidden = false
            }
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? NoteCollectionViewCell {
            cell.contentView.backgroundColor = nil
            cell.beatLabel.textColor = UIColor.cpWhite
            cell.noteBlackImageView.isHidden = true
            
            if cell.upperDotNoteBlackImageView.isHidden == false {
                cell.upperDotNoteBlackImageView.isHidden = true
            }
            
            if cell.lowerDotNoteBlackImageView.isHidden == false {
                cell.lowerDotNoteBlackImageView.isHidden = true
            }
        }
    }
    
}

//extension CollectionTableViewCell: ViewControllerDelegate {
//    func didSetNote(_ note: Note) {
//        self.models[selectedIndex] = note
//        collectionView.reloadData()
//    }
//    
//    
//}
