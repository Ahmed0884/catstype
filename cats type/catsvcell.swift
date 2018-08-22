//
//  catsvcell.swift
//  cats type
//
//  Created by Ahmed nabil on 8/15/18.
//  Copyright © 2018 Ahmed nabil. All rights reserved.
//

import UIKit

class catsvcell: UICollectionViewCell {
   
    
    
    @IBOutlet weak var catsname: UILabel!
    @IBOutlet weak var catimage2: UIImageView!
    


    func setcat(cat:catss){
    
    catimage2.image = UIImage(named: cat.image!)
        catsname.text = cat.name!
        
    }

}
