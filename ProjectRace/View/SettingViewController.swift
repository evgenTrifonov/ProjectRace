//
//  SettingViewController.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 15.03.2022.
//

import Foundation
import UIKit

enum SettingKey {
    static let lastName = "lastName"
    static let carColor = "carColor"
    
}


class SettingViewController: UIViewController {
    
    var segmentController = UISegmentedControl()
    var imageView = UIImageView()
        
    let imagesFonView = UIImageView(image: UIImage(named: "oboi"))
    var menuRace = ["Красная", "Желтая"]
    let imageArrayCarRace = [UIImage(named: "car.png"),
                             UIImage(named: "carYell.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let navigationController = UINavigationController.init(rootViewController: ViewController())
       
       // view.backgroundColor = UIColor.gray
        navigationItem.title = "Настройки"
        navigationController.navigationBar.prefersLargeTitles = true
    
      
        //create Fon
        imagesFonView.contentMode = .scaleAspectFill
        view.addSubview(imagesFonView)
        imagesFonView.frame = CGRect(x: CGFloat.zero, y: CGFloat.zero, width: view.frame.width, height: view.frame.height)
        view.sendSubviewToBack(imagesFonView)
        
        imageView.frame = CGRect(x: 0, y: -190, width: 130, height: 180)
        imageView.center = view.center
        imageView.image = imageArrayCarRace[0]
        view.addSubview(imageView)
        
        //create segment
        segmentController = UISegmentedControl(items: self.menuRace)
        segmentController.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
        view.addSubview(segmentController)
        
        segmentController.addTarget(self, action: #selector(selectedValue), for: .valueChanged)

        
    }
    
  
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == self.segmentController {
            let segmentIndex = target.selectedSegmentIndex
            
            self.imageView.image = self.imageArrayCarRace[segmentIndex]
            
            
        }
    }
    
    @objc func close() {
        dismiss(animated: true, completion: nil)
    }
}




