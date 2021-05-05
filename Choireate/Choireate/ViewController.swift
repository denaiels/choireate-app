//
//  ViewController.swift
//  Choireate
//
//  Created by Daniel Santoso on 05/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var models = [Note]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDefaultModel()
        print(models)
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 189
    }

    func getDefaultModel() {
        models.append(Note(name: "lowerDo", value: 1, lowerNote: true, upperNote: false, image: "1"))
        models.append(Note(name: "lowerDi", value: 2, lowerNote: true, upperNote: false, image: "1up"))
        models.append(Note(name: "lowerRe", value: 3, lowerNote: true, upperNote: false, image: "2"))
        models.append(Note(name: "lowerRi", value: 4, lowerNote: true, upperNote: false, image: "2up"))
        models.append(Note(name: "lowerMi", value: 5, lowerNote: true, upperNote: false, image: "3"))
        models.append(Note(name: "lowerFa", value: 6, lowerNote: true, upperNote: false, image: "4"))
        models.append(Note(name: "lowerFis", value: 7, lowerNote: true, upperNote: false, image: "4up"))
        models.append(Note(name: "lowerSol", value: 8, lowerNote: true, upperNote: false, image: "5"))
        models.append(Note(name: "lowerSel", value: 9, lowerNote: true, upperNote: false, image: "5up"))
        models.append(Note(name: "lowerLa", value: 10, lowerNote: true, upperNote: false, image: "6"))
        models.append(Note(name: "lowerLeh", value: 11, lowerNote: true, upperNote: false, image: "6up"))
        models.append(Note(name: "lowerSi", value: 12, lowerNote: true, upperNote: false, image: "7"))
        models.append(Note(name: "Do", value: 13, lowerNote: false, upperNote: false, image: "1"))
        models.append(Note(name: "Di", value: 14, lowerNote: false, upperNote: false, image: "1up"))
        models.append(Note(name: "Re", value: 15, lowerNote: false, upperNote: false, image: "2"))
        models.append(Note(name: "Ri", value: 16, lowerNote: false, upperNote: false, image: "2up"))
        models.append(Note(name: "Mi", value: 17, lowerNote: false, upperNote: false, image: "3"))
        models.append(Note(name: "Fa", value: 18, lowerNote: false, upperNote: false, image: "4"))
        models.append(Note(name: "Fis", value: 19, lowerNote: false, upperNote: false, image: "4up"))
        models.append(Note(name: "Sol", value: 20, lowerNote: false, upperNote: false, image: "5"))
        models.append(Note(name: "Sel", value: 21, lowerNote: false, upperNote: false, image: "5up"))
        models.append(Note(name: "La", value: 22, lowerNote: false, upperNote: false, image: "6"))
        models.append(Note(name: "Leh", value: 23, lowerNote: false, upperNote: false, image: "6up"))
        models.append(Note(name: "Si", value: 24, lowerNote: false, upperNote: false, image: "7"))
        models.append(Note(name: "upperDo", value: 25, lowerNote: false, upperNote: true, image: "1"))
        models.append(Note(name: "upperDi", value: 26, lowerNote: false, upperNote: true, image: "1up"))
        models.append(Note(name: "upperRe", value: 27, lowerNote: false, upperNote: true, image: "2"))
        models.append(Note(name: "upmodels.append(perRi", value: 28, lowerNote: false, upperNote: true, image: "2up"))
        models.append(Note(name: "upperMi", value: 29, lowerNote: false, upperNote: true, image: "3"))
        models.append(Note(name: "upperFa", value: 30, lowerNote: false, upperNote: true, image: "4"))
        models.append(Note(name: "upperFis", value: 31, lowerNote: false, upperNote: true, image: "4up"))
        models.append(Note(name: "upperSol", value: 32, lowerNote: false, upperNote: true, image: "5"))
        models.append(Note(name: "upperSel", value: 33, lowerNote: false, upperNote: true, image: "5up"))
        models.append(Note(name: "upperLa", value: 34, lowerNote: false, upperNote: true, image: "6"))
        models.append(Note(name: "upperLeh", value: 35, lowerNote: false, upperNote: true, image: "6up"))
        models.append(Note(name: "upperSi", value: 36, lowerNote: false, upperNote: true, image: "7"))
    }
    
}

