//
//  ViewController.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let imagesFonView = UIImageView(image: UIImage(named: "oboi"))
    let playButton = UIButton()
    let settingButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //create button play
        playButton.setTitle("Play", for: .normal)
        playButton.backgroundColor = .red
        playButton.titleLabel?.textColor = .white
        playButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(playButton)
        constraintButton()
       
        playButton.addTarget(self, action: #selector(goToViewButtonAction), for: .touchUpInside)
        
        //create button setting
        settingButton.setTitle("Setting", for: .normal)
        settingButton.backgroundColor = .red
        settingButton.titleLabel?.textColor = .white
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(settingButton)
        settingCnstraintButton()
       
        settingButton.addTarget(self, action: #selector(goToSettingViewButtonAction), for: .touchUpInside)

        
        //create Fon
        imagesFonView.contentMode = .scaleAspectFill
        view.addSubview(imagesFonView)
        imagesFonView.frame = CGRect(x: CGFloat.zero, y: CGFloat.zero, width: view.frame.width, height: view.frame.height)
        view.sendSubviewToBack(imagesFonView)
        
    }
   
    func constraintButton() {
        playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        playButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        playButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
    }
    
    func settingCnstraintButton() {
        settingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        settingButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        settingButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
    }
    
    
    @objc func goToViewButtonAction(_ sender: Any) {
        let raceController = storyboard!.instantiateViewController(withIdentifier: "raceController")
        raceController.modalPresentationStyle = .fullScreen
        present(raceController, animated: true, completion: nil)

       
    }
    
    @objc func goToSettingViewButtonAction(_ sender: Any) {
        let settingController = UIStoryboard(name: "SettingViewController", bundle: nil)
        let oneControlller = settingController.instantiateViewController(withIdentifier: "settingController")
       // present(, animated: true, completion: nil)
        

    }
 
  
}



