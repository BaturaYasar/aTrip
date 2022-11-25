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
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        
        
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
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionVC.identifier, for: indexPath) as! MainCollectionVC
        cell.setupUI()
        return cell
        
    }
    
    
}

extension MainVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 220)
    }
}


