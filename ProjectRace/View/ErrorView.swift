//
//  ErrorView.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 17.03.2022.
//

import Foundation
import UIKit

class ErrorView: UIViewController {
    
    let errorLabel = UILabel()
    
    
    
    let imagesFonView = UIImageView(image: UIImage(named: "oboi"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let navigationController = UINavigationController.init(rootViewController: ViewController())
       
       // view.backgroundColor = UIColor.gray
//        navigationItem.title = "Вы допустили столкновение"
//        navigationController.navigationBar.prefersLargeTitles = true
        
        //create Fon
        imagesFonView.contentMode = .scaleAspectFill
        view.addSubview(imagesFonView)
        imagesFonView.frame = CGRect(x: CGFloat.zero, y: CGFloat.zero, width: view.frame.width, height: view.frame.height)
        view.sendSubviewToBack(imagesFonView)
        
        errorLabel.frame = CGRect(x: 0, y: 100, width: 190, height: 30)
       
        errorLabel.text = "Вы проиграли!"
        errorLabel.font = UIFont.boldSystemFont(ofSize: 22)
        errorLabel.center = self.view.center
        errorLabel.textColor = .red
        view.addSubview(errorLabel)
        
       

      
    }
    @objc func close() {
        dismiss(animated: true, completion: nil)
    }
}


