//
//  MainCollectionVC.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 22/11/2022.
//

import UIKit

class MainCollectionVC: UICollectionViewCell {

    @IBOutlet weak var articleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var backView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.makeCornerRadius()
        imageCell.makeCornerRadius()
    }
    
    func setupUI() {
        articleLabel.text = "Beautiful Alley Scene in Old Town in Europe at Sunset"
        categoryLabel.text = "EXPERIENCE"
    }
    
    

}
