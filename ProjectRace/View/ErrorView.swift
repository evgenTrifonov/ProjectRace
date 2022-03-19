//
//  ErrorView.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 17.03.2022.
//

import Foundation
import UIKit

class ErrorView: UIViewController {
    
   
    let imagesFonView = UIImageView(image: UIImage(named: "oboi"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navigationController = UINavigationController.init(rootViewController: ViewController())
       
       // view.backgroundColor = UIColor.gray
        navigationItem.title = "Вы допустили столкновение"
        navigationController.navigationBar.prefersLargeTitles = true
        
        
        
    }
}
