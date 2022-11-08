//
//  likeControlView.swift
//  graph1
//
//  Created by Сергей Буланов on 08.11.2022.
//

import UIKit

protocol LikeControlProtocol: AnyObject {
    
    func numberCount() -> Int
    func changeCount(count: Int)
   
    
    
}


@IBDesignable class likeControlView: UIView {

    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    weak var delegate: LikeControlProtocol?
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
        let nib = UINib(nibName: "likeControlView", bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {return UIView()}
        return view
    }
    
    private func setup() {
        view = loadFromNIb()
        guard let view = view else {return}
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        
//        if let number = delegate?.numberCount() {
//            countLabel.text = String(number)
//            countLike = number
//        }
    }
    
    
    @IBAction func pressHeartButton(_ sender: UIButton) {
        

        
        if isHeartActive {
            heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
           countLike -= 1
            countLabel.text = String(countLike)
            
        } else {
            heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            countLike += 1
            countLabel.text = String(countLike)
        }
        
        isHeartActive = !isHeartActive
//        delegate?.changeCount(count: countLike)
    }
    
}
