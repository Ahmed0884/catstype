//
//  VCcatsdetails.swift
//  cats type
//
//  Created by Ahmed nabil on 8/22/18.
//  Copyright © 2018 Ahmed nabil. All rights reserved.
//

import UIKit

class VCcatsdetails: UIViewController {

    
   
    @IBOutlet weak var pcatimage: UIImageView!
   
    
    @IBOutlet weak var pcatdes: UITextView!
    
    
    @IBOutlet weak var pcatname2: UILabel!
    
    
    var pcat:catss?

    override func viewDidLoad() {
        super.viewDidLoad()

        pcatdes.text = pcat?.des!
        pcatname2.text = pcat?.name!
        pcatimage.image = UIImage(named: (pcat?.image!)!)
    
    }


    @IBAction func back2(_ sender: Any) {
        
        dismiss(animated: true , completion: nil)
         
    }
    
    
}
