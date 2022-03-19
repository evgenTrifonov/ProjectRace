//
//  ViewController.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
   //var button = UIButton()
    
    @IBOutlet weak var playButtonOutlet: UIButton!
    
    @IBOutlet weak var settingButtonOutlet: UIButton!
    
    
    @IBOutlet weak var errorButtonOutlet: UIButton!
    
    
    @IBAction func playButton(_ sender: Any) {
        
    }
    
    @IBAction func settingButton(_ sender: Any) {
    }
    
    @IBAction func errorButton(_ sender: Any) {
    }
    
    let imagesFonView = UIImageView(image: UIImage(named: "oboi"))

    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        //create button play
        playButtonOutlet.setTitle("Играть", for: .normal)
        playButtonOutlet.backgroundColor = .red
        playButtonOutlet.titleLabel?.textColor = .white
        playButtonOutlet.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(playButtonOutlet)
        constraintButton()
            

        //create button setting
        settingButtonOutlet.setTitle("Настройки", for: .normal)
        settingButtonOutlet.backgroundColor = .red
        settingButtonOutlet.titleLabel?.textColor = .white
        settingButtonOutlet.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(settingButtonOutlet)
        settingCostraintButton()
        
        //create button error
        errorButtonOutlet.setTitle("Страница с ошибкой", for: .normal)
        errorButtonOutlet.backgroundColor = .red
        errorButtonOutlet.titleLabel?.textColor = .white
        errorButtonOutlet.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(errorButtonOutlet)
        errorCnstraintButton()

        
        //create Fon
        imagesFonView.contentMode = .scaleAspectFill
        view.addSubview(imagesFonView)
        imagesFonView.frame = CGRect(x: CGFloat.zero, y: CGFloat.zero, width: view.frame.width, height: view.frame.height)
        view.sendSubviewToBack(imagesFonView)

   
    func constraintButton() {
        playButtonOutlet!.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        playButtonOutlet!.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        playButtonOutlet!.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
    }

    func settingCostraintButton() {
        settingButtonOutlet.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        settingButtonOutlet.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        settingButtonOutlet.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
    }
        
    func errorCnstraintButton() {
        errorButtonOutlet.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        errorButtonOutlet.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        errorButtonOutlet.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
        }
        
    }
  
}




