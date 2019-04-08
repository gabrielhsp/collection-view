//
//  FirstScreenViewController.swift
//  DetailsApp
//
//  Created by Gabriel Henrique Santos Pereira on 08/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private static var cellHeight = CGFloat(200)
    
    private lazy var characters : [Character] = [
        Character(name: "Capitã Marvel", image: #imageLiteral(resourceName: "marvel_1")),
        Character(name: "Os Vingadores", image: #imageLiteral(resourceName: "marvel_2")),
        Character(name: "Hulk", image: #imageLiteral(resourceName: "marvel_3")),
        Character(name: "Capitão América", image: #imageLiteral(resourceName: "marvel_4")),
        Character(name: "Pantera Negra", image: #imageLiteral(resourceName: "marvel_5")),
        Character(name: "Homem-formiga", image: #imageLiteral(resourceName: "marvel_6"))
    ]
    
    init() {
        super.init(nibName: "FirstScreenViewController", bundle: Bundle.main)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(CollectionViewCell.instanceOfNib(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        guard let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else {
            return .zero
        }
        
        return CGSize(width: (collectionView.bounds.width / 3) - flowLayout.minimumLineSpacing, height: FirstScreenViewController.cellHeight)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        let charactersData = characters[indexPath.item]
        
        cell.setCellData(name: charactersData.name, image: charactersData.image)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let character = characters[indexPath.item]
        let heroDetailsViewController = HeroDetailsViewController(character: character)
        
        self.present(heroDetailsViewController, animated: true, completion: nil)
    }
}
