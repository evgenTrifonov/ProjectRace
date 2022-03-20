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
    
    //let resrartButton = UIButton()
    
    @IBOutlet weak var restartButton: UIButton!
    
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
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(errorLabel)
        errorConstraintLabel()
        
        restartButton.setTitle("Начать заново", for: .normal)
        restartButton.backgroundColor = .red
        restartButton.titleLabel?.textColor = .white
        restartButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(restartButton)
        srestartCostraintButton()
        
        restartButton.addTarget(self, action: #selector(clickRestartButtonRecognizer), for: .touchDown)

        func errorConstraintLabel() {
            errorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            errorLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            errorLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
        }
        
        func srestartCostraintButton() {
            restartButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            restartButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
            restartButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
        }
      
    }
    
    @objc func clickRestartButtonRecognizer(sender: UIButton!) {
        
            let Controller = UIStoryboard(name: "ViewController", bundle: nil)
            let errorStoryboard = Controller.instantiateViewController(withIdentifier: "viewController")
            errorStoryboard.modalPresentationStyle = .fullScreen
            present(errorStoryboard, animated: true, completion: nil)
        
        
    }
    
    @objc func close() {
        dismiss(animated: true, completion: nil)
    }
}


