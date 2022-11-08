//
//  ViewController.swift
//  graph1
//
//  Created by Сергей Буланов on 07.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magentaView: UIView!
    
    @IBOutlet weak var viewFromControl: UIView!
    
    @IBOutlet weak var likeControlView: likeControlView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        magentaView.layer.cornerRadius = 6
        magentaView.layer.borderColor = UIColor.cyan.cgColor
        magentaView.layer.borderWidth = 6
        
        magentaView.layer.shadowColor = UIColor.black.cgColor
        magentaView.layer.shadowOffset = CGSize(width: 20, height: 20)
        magentaView.layer.shadowRadius = 15
        magentaView.layer.shadowOpacity = 0.9
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemGreen.cgColor, UIColor.magenta.cgColor, UIColor.white.cgColor]
        gradientLayer.locations = [0, 0.5, 1]
        gradientLayer.startPoint = CGPoint.zero
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer.frame = magentaView.bounds
        gradientLayer.cornerRadius = 6
        magentaView.layer.addSublayer(gradientLayer)
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        magentaView.addGestureRecognizer(tapRecognizer)
        
        
        likeControlView.delegate = self
        
        let labelTemplate = UILabel.appearance(for: UITraitCollection(userInterfaceIdiom: .phone))
        labelTemplate.text = "custom text"
        labelTemplate.backgroundColor = UIColor.cyan
        
        
    }

    
    
    @objc func onTap() {
        
                let translation = CATransform3DMakeTranslation(10, 20, 100)
                let rotation = CATransform3DMakeRotation(.pi / 4, 1, 0, 1)
                let scale = CATransform3DMakeScale(0.5, 0.5, 1)
                let custom = CATransform3DConcat(scale, CATransform3DConcat(translation, rotation))
                magentaView.layer.transform = custom
        
        
        
        
        
        
        
        
    }
    

    @IBAction func pressButton(_ sender: Any) {
        
//        let translation = CGAffineTransform(translationX: 10, y: 70)
//        let scale = CGAffineTransform(scaleX: 1.5, y: 1.5)
//        let rotation = CGAffineTransform(rotationAngle: .pi / 4)
//        let customTransform = scale.concatenating(rotation)
//        let custom = customTransform.concatenating(translation)
//        let translation = CATransform3DMakeTranslation(10, 20, 100)
//        let rotation = CATransform3DMakeRotation(.pi / 4, 1, 0, 1)
//        let scale = CATransform3DMakeScale(0.5, 0.5, 1)
//        let custom = CATransform3DConcat(scale, CATransform3DConcat(translation, rotation))
        
        
        
        
        
        
        //magentaView.transform = translation
        //magentaView.transform = scale
//        magentaView.transform = rotation
        //magentaView.transform = customTransform
        //magentaView.transform = custom
//        magentaView.layer.transform = translation
//        magentaView.layer.transform = rotation
//        magentaView.layer.transform = scale
//        magentaView.layer.transform = custom
        self.view.layoutIfNeeded()
        self.view.setNeedsDisplay()
    }
}

extension ViewController: LikeControlProtocol {
    func numberCount() -> Int {
        return 91
    }
    
    func changeCount(count: Int) {
        print(count)
    }
    
    
    
    
}
