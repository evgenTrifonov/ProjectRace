//
//  ErrorView.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 17.03.2022.
//

import Foundation
import UIKit

class ErrorViewController: UIViewController {
    
    let errorLabel = UILabel()
  
  
    @IBOutlet weak var restartButton: UIButton!
    
    let imagesFonView = UIImageView(image: UIImage(named: "oboi"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let navigationController = UINavigationController.init(rootViewController: ViewController())
       

        
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
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(errorLabel)
        errorConstraintLabel()
        
        restartButton.setTitle("Выйти", for: .normal)
        restartButton.backgroundColor = .red
        restartButton.titleLabel?.textColor = .white
        restartButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(restartButton)
        restartCostraintButton()
        
        restartButton.addTarget(self, action: #selector(close), for: .touchDown)

        func errorConstraintLabel() {
            errorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            errorLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            errorLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
        }
        
        func restartCostraintButton() {
            restartButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            restartButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
            restartButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
        }
      
    }
    
    @IBAction func restartButtonAction(_ sender: Any) {
        
    }

        
    @objc func close() {
       // dismiss(animated: true, completion: nil)
        let Controller = UIStoryboard(name: "Main", bundle: nil)
        let errorStoryboard = Controller.instantiateViewController(withIdentifier: "viewController") as! ViewController
        errorStoryboard.modalPresentationStyle = .fullScreen
        present(errorStoryboard, animated: true, completion: nil)
    }
}


