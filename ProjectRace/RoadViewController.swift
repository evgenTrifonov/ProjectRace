//
//  RoadViewController.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 11.01.2022.
//

import UIKit

class RoadViewController: UIViewController {

    private let imagesView = UIImageView(image: UIImage(named: "road"))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imagesView.contentMode = .scaleAspectFit
        view.addSubview(imagesView)
        imagesView.frame = CGRect(x: 300, y: 300, width: 320, height: 570)
        
        moveRightSlider()
    }
    
    func moveRightSlider() {
        UIView.animate(withDuration: 0.3,
                       delay: 2,
                       options: .curveLinear) {
            self.imagesView.frame = CGRect(x: 0, y: 300, width: 320, height: 570)
          
        } completion: { _ in
            self.moveRightSlider()
        }
    }

    


}
