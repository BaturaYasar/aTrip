//
//  SearchListTVC.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 22/11/2022.
//

import UIKit
import Kingfisher

class SearchListTVC: UITableViewCell {

    @IBOutlet weak var orangeBack: UIView!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var backBlackView: UIView!
    @IBOutlet weak var searchImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        makeCorners()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configureUI(property:Property?) {
        nameLabel.text = property?.name
        let formattedPrice = property?.price?.displayMessages?.first?.lineItems?.first?.price?.formatted
        if formattedPrice == nil {
            priceLabel.text = "price is unknown at the moment"
        }else {
            priceLabel.text = formattedPrice
        }
        if let url = URL(string: property?.propertyImage?.image?.url ?? ""){
            searchImage.setImage(url: url)
        }else {
            searchImage.image = nil
        }
        
    }
    
    func makeCorners() {
        orangeBack.layer.masksToBounds = true
        orangeBack.layer.cornerRadius = 8
        backView.layer.masksToBounds = true
        backView.layer.cornerRadius = 8
        backBlackView.layer.masksToBounds = true
        backBlackView.layer.cornerRadius = 8
        
    }
    
}


