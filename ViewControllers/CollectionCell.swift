//
//  CollectionCell.swift
//  Rondogo
//
//  Created by GrepRuby3 on 18/12/15.
//  Copyright © 2015 GrepRuby3. All rights reserved.
//

import Foundation
import UIKit

class CollectionCell : UICollectionViewCell {
    
    var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func applyDefaults(frame: CGRect , strImgName : String ){
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        imageView.image = UIImage(named: strImgName)
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        imageView.layer.masksToBounds = true
        contentView.addSubview(imageView)
    }
    
    func configureCellLayout(frame: CGRect){
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        imageView.layer.masksToBounds = true
        contentView.addSubview(imageView)
    }
    
}