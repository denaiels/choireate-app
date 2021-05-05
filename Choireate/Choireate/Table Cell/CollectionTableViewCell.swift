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
//        collectionView.reloadData()
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var models = [Note]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(NoteCollectionViewCell.nib(), forCellWithReuseIdentifier: NoteCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
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
        
        cell.configure(with: defaultNotes[indexPath.row])
        cell.beatLabel.text = "\(indexPath.row + 1)"
        
        
        if indexPath.row == 0 {
            cell.addBorders(edges: [.left], color: .cpRed, thickness: 1)
        } else {
            cell.addBorders(edges: [.left], color: .cpGray, thickness: 1)
        }
        cell.addBorders(edges: [.right], color: .cpGray, thickness: 1)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 30, height: 189)
    }
    
}
