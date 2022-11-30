//
//  LikeControlView.swift
//  alterVKcl
//
//  Created by Сергей Буланов on 08.11.2022.
//

import UIKit

class LikeControlView: UIView {

    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    
    private var view: UIView?
    
    var isHeartActive = false
    var countLike = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    
    
    
    private func loadFromNIb() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "LikeControlView", bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {return UIView()}
        return view
    }
    
    private func setup() {
        view = loadFromNIb()
        guard let view = view else {return}
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        
    }
    
    
    
    @IBAction func pressHeartButton(_ sender: UIButton) {
        
                if isHeartActive {
                    heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
//                   countLike -= 1
//                    countLabel.text = String(countLike)
                    UIView.transition(with: countLabel, duration: 0.4,options: .transitionFlipFromTop) {
                        [weak self] in self?.countLabel.text = "0"}
  
                } else {
                    heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
//                    countLike += 1
//                    countLabel.text = String(countLike)
                    UIView.transition(with: countLabel, duration: 0.4,options: .transitionFlipFromTop) {
                        [weak self] in self?.countLabel.text = "1"}
  
                }
        
                isHeartActive = !isHeartActive
    }
    
}
