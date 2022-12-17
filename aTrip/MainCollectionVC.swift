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
   
  
    func configureUI(article: Article?) {
        articleLabel.text = article?.title ?? ""
        if let url = URL(string: article?.imageUrl ?? "") {
            imageCell.setImage(url: url)
        }else {
            imageCell.image = nil
        }
        
    }
    
    
    

}
