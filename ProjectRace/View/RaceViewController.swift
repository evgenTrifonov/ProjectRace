//
//  RaceViewController.swift
//  ProjectRace
//
//  Created by Evgeny Trifonov on 12.01.2022.
//

import UIKit

class RaceViewController: UIViewController {
    
    //enum constants
    //new Feature code
    enum Constants {
        static let step: CGFloat = 130
    }
    
    let imagesRoadView = UIImageView(image: UIImage(named: "street"))
    let imagesRoad2View = UIImageView(image: UIImage(named: "street2"))
    
    let imagesCarView = UIImageView(image: UIImage(named: "car"))
    
    let imagesWheelView = UIImageView(image: UIImage(named: "wheel"))
    let imagesWheel2View = UIImageView(image: UIImage(named: "wheel2"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
      
        
        //create Road
        imagesRoadView.contentMode = .scaleAspectFill
        imagesRoadView.frame = CGRect(x: CGFloat.zero, y: CGFloat.zero, width: view.frame.width, height: view.frame.height)
        view.addSubview(imagesRoadView)
        view.sendSubviewToBack(imagesRoadView)
        
        imagesRoad2View.contentMode = .scaleAspectFill
        imagesRoad2View.frame = CGRect(x: CGFloat.zero, y: CGFloat.zero - view.frame.height, width: view.frame.width, height: view.frame.height)
        view.addSubview(imagesRoad2View)
        view.sendSubviewToBack(imagesRoad2View)
             
        //create Wheel
        imagesWheelView.contentMode = .scaleAspectFit
        imagesWheelView.frame = CGRect(x: 50, y: -10, width: 100, height: 100)
        view.addSubview(imagesWheelView)

        imagesWheel2View.contentMode = .scaleAspectFit
        imagesWheel2View.frame = CGRect(x: 250, y: -850, width: 100, height: 100)
        view.addSubview(imagesWheel2View)
     
        //create Car
        imagesCarView.contentMode = .scaleAspectFit
        imagesCarView.frame = CGRect(x: 140, y: 550, width: 130, height: 260)
        view.addSubview(imagesCarView)
       
        //swipe
        let swipeLeftRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeLeftRecognizer.direction = .left
        imagesCarView.addGestureRecognizer(swipeLeftRecognizer)
        
        let swipeRightRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeRightRecognizer.direction = .right
        imagesCarView.addGestureRecognizer(swipeRightRecognizer)
        
        imagesCarView.isUserInteractionEnabled = true
      
        
        DispatchQueue.main.async {
        self.moveRoad()
        }
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//            print(imagesWheelView.layer.presentation()?.frame)
//
//        }

     

        }
    func viewWillApper() {
        moveRoad()
       
    }

}
    
//MARK: - Method
//move Road
private extension RaceViewController {
func moveRoad() {
    UIView.animate(withDuration: 5,
                   delay: 0.0,
                   options: [.repeat, .curveLinear], animations: {
        
        self.imagesRoadView.frame = self.imagesRoadView.frame.offsetBy(dx: 0.0, dy: +1 * self.imagesRoadView.frame.size.height)
        
        self.imagesRoad2View.frame = self.imagesRoad2View.frame.offsetBy(dx: 0.0, dy: +1 * self.imagesRoad2View.frame.size.height)
        
        self.imagesWheelView.frame = self.imagesWheelView.frame.offsetBy(dx: 0.0, dy: +1 * self.imagesRoadView.frame.size.height)
        
        self.imagesWheel2View.frame = self.imagesWheel2View.frame.offsetBy(dx: 0.0, dy: +1 *
                                                                           self.view.frame.size.height)
    }, completion: nil)
  }

    //swipe car
    @objc func swipe(_ recognizer: UISwipeGestureRecognizer) {
        switch recognizer.direction {
        case .left:
            let minLeft = view.bounds.minX
            if imagesCarView.frame.origin.x > minLeft {
                imagesCarView.frame.origin.x = max(minLeft, imagesCarView.frame.origin.x - Constants.step)
            }
        case .right:
            let maxRight = view.bounds.maxX - imagesCarView.frame.width
            if imagesCarView.frame.origin.x < maxRight {
                imagesCarView.frame.origin.x = min(maxRight, imagesCarView.frame.origin.x + Constants.step)
            }
        default:
            return
        }
        
    }
    
    @objc func close() {
        dismiss(animated: true, completion: nil)
    }
    
    
}

