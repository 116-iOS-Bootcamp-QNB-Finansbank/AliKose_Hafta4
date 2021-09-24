//
//  HeroTwoViewController.swift
//  BasicUIComponents
//
//  Created by Ali Kose on 21.09.2021.
//

import UIKit
import Hero
class HeroTwoViewController: UIViewController {
 
    @IBOutlet weak var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.heroID = "red"
        self.view.hero.modifiers = [.translate(y:100)]

    }
}
