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
    var propertlyListResponse: PropertyListResponse?
    var filteredData: [Property]?
    var isFiltered:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupTextField()
        getHotelsInfo()
        
        searchTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    }
    
    @objc func textChanged(_ textField:UITextField) {
        let text = textField.text ?? ""
        let data = propertlyListResponse?.data?.propertySearch?.properties?.filter({ term in
            if let name = term.name {
               return name.lowercased().contains(text.lowercased())
            }
            return false
        })
        self.filteredData = data
        if textField.text == nil || textField.text == "" {
            isFiltered = false
        }else {
            isFiltered = true
        }
        reloadTableView()
    }
    
    func getHotelsInfo() {
        let destination = Destination(regionID: "6054439")
        let checkDate = CheckDate(typename: nil, day: 10, month: 10, year: 2022)
        let checkOutDate = CheckDate(typename: nil, day: 15, month: 10, year: 2022)
        let filters = Filters(price: Price(max: 150, min: 100))
        let rooms = Room(adults: 1)
        let req = PropertyListRequest(currency: "USD", eapid: 1, locale: "en_US", siteID: 300000001, destination: destination, checkInDate: checkDate, checkOutDate: checkOutDate, rooms: [rooms], resultsStartingIndex: 0, resultsSize: 200, sort: "PRICE_LOW_TO_HIGH", filters: filters)
        NetworkManager.shared.propertyList(request: req) { result in
            switch result {
            case .success(let response):
                self.propertlyListResponse = response
                self.reloadTableView()
            case .failure(let error):
                print(error)
            }
        }
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
    
    fileprivate func reloadTableView() {
        DispatchQueue.main.async {
            self.searchTableView.reloadData()
        }
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
        if isFiltered {
            return filteredData?.count ?? 0
        }else {
            return propertlyListResponse?.data?.propertySearch?.properties?.count ?? 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchTableView.dequeueReusableCell(withIdentifier: SearchListTVC.identifier, for: indexPath) as! SearchListTVC
        if isFiltered {
            cell.configureUI(property: filteredData?[indexPath.row])
        }else {
            cell.configureUI(property: propertlyListResponse?.data?.propertySearch?.properties?[indexPath.row])
        }
        
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
