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
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        makeCorners()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCarRentalUI(carRentalResult:SearchResult?) {
        orangeBack.isHidden = true
        nameLabel.text = carRentalResult?.supplierInfo?.name
        let allPrices = carRentalResult?.pricingInfo
        priceLabel.text = "Price: \(allPrices?.price ?? 0.0) \(allPrices?.currency ?? "")"
        leftLabel.text = "Car: \(carRentalResult?.vehicleInfo?.vName ?? "")"
        if let url = URL(string: carRentalResult?.vehicleInfo?.imageURL ?? ""){
            searchImage.setImage(url: url)
        }else {
            searchImage.image = nil
        }
    }
    
    func configureUI(result:DataResult?) {
        nameLabel.text = result?.hotelName
        let allInclusiveAmount = result?.compositePriceBreakdown?.allInclusiveAmount
        priceLabel.text = "Min Price: \(allInclusiveAmount?.value ?? 0.0) \(allInclusiveAmount?.currency ?? "")"
        let score = result?.reviewScore
        if score == nil {
            leftLabel.text = "price is unknown at the moment"
        }else {
            leftLabel.text = "Score: \(score ?? 0.0)"
        }
        if let url = URL(string: result?.mainPhotoURL ?? ""){
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


