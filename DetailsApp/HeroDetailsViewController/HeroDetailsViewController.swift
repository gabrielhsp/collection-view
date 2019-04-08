//
//  HeroDetailsViewController.swift
//  DetailsApp
//
//  Created by Gabriel Henrique Santos Pereira on 08/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class HeroDetailsViewController: UIViewController {
    @IBOutlet private weak var imageViewHero: UIImageView!
    @IBOutlet private weak var labelHeroName: UILabel!
    
    private var character: Character
    
    init(character: Character) {
        self.character = character
        super.init(nibName: "HeroDetailsViewController", bundle: Bundle.main)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.character = Character(name: "Herói padrão", image: #imageLiteral(resourceName: "marvel_1"))
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageViewHero.image = character.image
        self.labelHeroName.text = character.name
    }
    
    @IBAction func actionGoBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
