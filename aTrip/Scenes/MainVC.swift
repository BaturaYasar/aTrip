//
//  ViewController.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 22/11/2022.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainTopPickLabel: UILabel!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    var propertlyListResponse: PropertyListResponse?
    var propertyArray = [PropertyListResponse]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        let destination = Destination(regionID: "6054439")
        let checkDate = CheckDate(typename: nil, day: 10, month: 10, year: 2022)
        let checkOutDate = CheckDate(typename: nil, day: 15, month: 10, year: 2022)
        let filters = Filters(price: Price(max: 150, min: 100))
        let rooms = Room(adults: 1)
        let req = PropertyListRequest(currency: "USD", eapid: 1, locale: "en_US", siteID: 300000001, destination: destination, checkInDate: checkDate, checkOutDate: checkOutDate, rooms: [rooms], resultsStartingIndex: 0, resultsSize: 200, sort: "PRICE_LOW_TO_HIGH", filters: filters)
        
        NetworkManager.shared.propertyList(request: req) { result in
            switch result {
            case .success(let response):
//                print(response)
//                print(self.propertlyListResponse?.data?.propertySearch?.properties?.first?.typename ?? "")
                self.propertlyListResponse = response
                self.reloadCollectionView()
            case.failure(let error):
                print(error)
            }
        }
        
    }
    
    fileprivate func reloadCollectionView() {
        DispatchQueue.main.async {
            self.mainCollectionView.reloadData()
        }
    }
    
    func setupCollectionView() {
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        let uinib = UINib(nibName: MainCollectionVC.identifier, bundle: nil)
        mainCollectionView.register(uinib, forCellWithReuseIdentifier: MainCollectionVC.identifier)
    }
    
    @IBAction func flightButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func hotelButtonTapped(_ sender: Any) {
    }
}

extension MainVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionVC.identifier, for: indexPath) as! MainCollectionVC
        cell.setupUI()
//        cell.articleLabel.text = propertlyListResponse?.data?.propertySearch?.filterMetadata?.neighborhoods?.first?.name ?? ""
//        cell.categoryLabel.text = propertlyListResponse?.data?.propertySearch?.properties?.first?.name ?? ""
        return cell
        
    }
    
    
}

extension MainVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 220)
    }
}


