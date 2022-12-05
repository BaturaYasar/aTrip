//
//  SearchVC.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 22/11/2022.
//

import UIKit

class SearchVC: UIViewController {

    @IBOutlet weak var hotelButton: UIButton!
    @IBOutlet weak var flightButton: UIButton!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchTableView: UITableView!
    @IBOutlet weak var searchLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupTextField()
    }
    
    func setupTextField() {
        searchTextField.delegate = self
        
        
    }
    
    func setupTableView() {
        searchTableView.delegate = self
        searchTableView.dataSource = self
        let uinib = UINib(nibName: SearchListTVC.identifier, bundle: nil)
        searchTableView.register(uinib, forCellReuseIdentifier: SearchListTVC.identifier)
    }
    
    func isSelected(button: UIButton,button1:UIButton, isSelected:Bool = true, notSelected:Bool = false) {
        button.isSelected = isSelected
        button1.isSelected = notSelected
    }
    

    @IBAction func searchHotelButtonTapped(_ sender: Any) {
        isSelected(button: hotelButton, button1: flightButton, isSelected: true, notSelected: false)
        
    }
    @IBAction func searchFlightButtonTapped(_ sender: Any) {
        isSelected(button: flightButton, button1: hotelButton, isSelected: true, notSelected: false)
        
    }

}

extension SearchVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchTableView.dequeueReusableCell(withIdentifier: SearchListTVC.identifier, for: indexPath) as! SearchListTVC
        
        return cell
    }
    
    
}

extension SearchVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
}

extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.text == "" {
            textField.makeBorder(color: .red)
            textField.shake()
            return false
        }else {
            textField.makeBorder(color: .lightGray)
            return true
        }
    }
}
