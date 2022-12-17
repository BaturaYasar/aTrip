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
    var articleArray: [Article]?
    
    var propertlyListResponse: PropertyListResponse?
    var propertyArray = [PropertyListResponse]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        getJsonfile()
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
    
    func getJsonfile()  {
        if let pathUrl = Bundle.main.url(forResource: "Article", withExtension: "json") {
            do {
                let data = try Data(contentsOf: pathUrl)
                let decoder = JSONDecoder()
                let model = try decoder.decode(ArticleModel.self, from: data)
                self.articleArray = model.articles
                DispatchQueue.main.async {
                    self.reloadCollectionView()
                }
            }catch {
                
            }
        }
    }
    
    @IBAction func flightButtonTapped(_ sender: Any) {
        self.tabBarController?.selectedIndex = 1
        if let vc = self.tabBarController?.viewControllers?[1] as? SearchVC, let rightButton = vc.flightButton {
            vc.searchRentingCarButtonTapped(rightButton)
        }
    }
    
    @IBAction func leftButton(_ sender: Any) {
        self.tabBarController?.selectedIndex = 1
        if let vc = self.tabBarController?.viewControllers?[1] as? SearchVC {
            let leftButton = vc.hotelButton
            vc.searchHotelButtonTapped(leftButton ?? (Any).self)
        }
    }
}

extension MainVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return articleArray?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionVC.identifier, for: indexPath) as! MainCollectionVC
        cell.configureUI(article: articleArray?[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = ArticleDetailVC()
        vc.article = articleArray?[indexPath.row]
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

extension MainVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 220)
    }
}


