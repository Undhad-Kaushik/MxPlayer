//
//  SearchBarPopView.swift
//  MxPlayer
//
//  Created by undhad kaushik on 23/02/23.
//

import UIKit

class SearchBarPopView: UIView {

    // MARK: - Variables
    var vc: UIViewController!
    var view: UIView!
    
    // MARK: - Outlets
    @IBOutlet weak var popView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var cancelButton: UIButton!
    
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
        let nib = UINib(nibName: "SearchBarPopView", bundle: bundle)
        let view = nib.instantiate(withOwner: self , options: nil).first as! UIView
        return view
    }
    
    // MARK: - Button Action
    @IBAction func cancelButtontapped(_ sender: UIButton) {
     //   self.view.removeFromSuperview()
        self.cancelButton.removeFromSuperview()
        self.removeFromSuperview()
    }
}

