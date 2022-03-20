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

    
    @IBAction func playButton(_ sender: Any) {
    }
    
    @IBAction func settingButton(_ sender: Any) {
    }
    
    @IBAction func errorButton(_ sender: Any) {
    }
    
    let imagesFonView = UIImageView(image: UIImage(named: "oboi"))

    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        //create Fon
        imagesFonView.contentMode = .scaleAspectFill
        view.addSubview(imagesFonView)
        imagesFonView.frame = CGRect(x: CGFloat.zero, y: CGFloat.zero, width: view.frame.width, height: view.frame.height)
        view.sendSubviewToBack(imagesFonView)
       
       
        playButtonOutlet.setTitle("Играть", for: .normal)
        playButtonOutlet.backgroundColor = .red
        playButtonOutlet.titleLabel?.textColor = .white
        playButtonOutlet.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(playButtonOutlet)
        constraintButton()
        
        playButtonOutlet.addTarget(self, action: #selector(playGame), for: .touchDown)
        
        //create button setting
        settingButtonOutlet.setTitle("Настройки", for: .normal)
        settingButtonOutlet.backgroundColor = .red
        settingButtonOutlet.titleLabel?.textColor = .white
        settingButtonOutlet.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(settingButtonOutlet)
        settingCostraintButton()
        
        
        
        func constraintButton() {
            playButtonOutlet.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            playButtonOutlet.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            playButtonOutlet.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
        }
        
        func settingCostraintButton() {
            settingButtonOutlet.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            settingButtonOutlet.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
            settingButtonOutlet.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
        }
    }
    @objc func playGame() {
        let Controller = UIStoryboard(name: "Main", bundle: nil)
        let raceStoryboard = Controller.instantiateViewController(withIdentifier: "raceController") as! RaceViewController
        raceStoryboard.modalPresentationStyle = .fullScreen
        present(raceStoryboard, animated: true, completion: nil)
    }
}






