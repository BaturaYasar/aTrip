//
//  ArticleDetailVC.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 17/12/2022.
//

import UIKit

class ArticleDetailVC: UIViewController {

    @IBOutlet weak var bookmarkButton: UIButton!
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var article: Article?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        articleImageView.makeCornerRadius()
        
    }
    
    
    
    func setupUI() {
        if let article = article {
            titleLabel.text = article.title ?? ""
            descLabel.text = article.desc ?? ""
            if let url = URL(string: article.imageUrl ?? "") {
                articleImageView.setImage(url: url)
            }
            
        }
    }

    @IBAction func bookmarkButtonTapped(_ sender: Any) {
        if Constant.UserDefaults.articleResponse == nil {
            Constant.UserDefaults.articleResponse = []
        }
        if Constant.UserDefaults.articleResponse?.contains(where: {$0?.id == article?.id ?? 0}) == false {
            Constant.UserDefaults.articleResponse?.append(article)
        }else {
            print("DataRepeat")
        }
        let refreshAlert = UIAlertController(title: nil, message: "Added to Bookmark", preferredStyle: UIAlertController.Style.alert)
        
        present(refreshAlert, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                refreshAlert.dismiss(animated: true)
            }
        }
    }
    
    

}
