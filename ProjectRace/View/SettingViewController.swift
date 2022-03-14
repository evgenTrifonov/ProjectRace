//
//  SettingViewController.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 15.03.2022.
//

import Foundation
import UIKit

class SettingViewController: UIViewController {
    
    var segmentController = UISegmentedControl()
    var imageView = UIImageView()
    
    //let imagesFonView = UIImageView(image: UIImage(named: "oboi"))
    var menuRace = ["RedCar", "BlueCar"]
    let imageArrayCarRace = [UIImage(named: "car.png"),
                             UIImage(named: "car2.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let navigationController = UINavigationController.init(rootViewController: ViewController())
       
       // view.backgroundColor = UIColor.gray
        navigationItem.title = "Настройки"
        navigationController.navigationBar.prefersLargeTitles = true
      
        //create Fon
//        imagesFonView.contentMode = .scaleAspectFill
//        view.addSubview(imagesFonView)
//        imagesFonView.frame = CGRect(x: CGFloat.zero, y: CGFloat.zero, width: view.frame.width, height: view.frame.height)
//        view.sendSubviewToBack(imagesFonView)
        
        imageView.frame = CGRect(x: 0, y: 0, width: 130, height: 260)
        //imageView.center = view.center
        imageView.image = imageArrayCarRace[0]
        view.addSubview(imageView)
        
        //create segment
        segmentController = UISegmentedControl(items: self.menuRace)
        segmentController.frame = CGRect(x: 100, y: 500, width: 200, height: 30)
        view.addSubview(segmentController)
        
        
        
    }
    
}




