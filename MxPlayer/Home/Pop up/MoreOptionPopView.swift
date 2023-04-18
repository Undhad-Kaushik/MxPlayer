//
//  custonpopupview.swift
//  MxPlayer
//
//  Created by undhad kaushik on 22/02/23.
//

import UIKit

class MoreOptionPopView: UIView {
    
    // MARK: - Variables
    var vc: UIViewController!
    var view: UIView!
    
    // MARK: - Outlets
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var selectButton: UIButton!
    @IBOutlet weak var popView: UIView!

    required init(coder: NSCoder){
        super.init(coder: coder)!
       
    }
    
    init(frame: CGRect , inView: UIViewController) {
        super.init(frame: frame)
        xibSetup(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        
        vc = inView
    }
    
    func xibSetup(frame: CGRect){
        self.view = loadNib()
        view.frame = frame
        addSubview(view)
    }
    func loadNib()-> UIView{
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "MoreOptionPopView", bundle: bundle)
        let view = nib.instantiate(withOwner: self , options: nil).first as! UIView
        return view
    }
    
    // MARK: - Button Action
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
        self.view.removeFromSuperview()
        self.removeFromSuperview()
    }
    
    @IBAction func selectButtonTapped(_ sender: Any) {
        self.view.removeFromSuperview()
        self.removeFromSuperview()
    }
}
