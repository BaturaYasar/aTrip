
//  SearchVC.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 22/11/2022.
//

import UIKit

enum SearchListPageType {
    case hotel
    case carRental
}

class SearchVC: UIViewController {
    
    @IBOutlet weak var hotelButton: UIButton!
    @IBOutlet weak var flightButton: UIButton!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchTableView: UITableView!
    @IBOutlet weak var searchLabel: UILabel!
    var propertlyListResponse: PropertyListResponse?
    var filteredData = ([DataResult](), [SearchResult]())
    var isFiltered:Bool = false
    var searchListPageType: SearchListPageType = .hotel
    var carRentalListResponse: CarRentalResponse?
    var isFilteredRentCar: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupTextField()
        getHotelsInfo()
        getCarRentalInfo()
        searchTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    }
    
    @objc func textChanged(_ textField:UITextField) {
        let text = textField.text ?? ""
        if searchListPageType == .hotel {
            let data = propertlyListResponse?.result?.filter({ resultData in
                if let name = resultData.hotelNameTrans {
                    return name.lowercased().contains(text.lowercased())
                }
                return false
            })
            self.filteredData.0 = data ?? []
            if textField.text == nil || textField.text == "" {
                isFiltered = false
            }else {
                isFiltered = true
            }
        }else {
            let data = carRentalListResponse?.searchResults?.filter({ resultData in
                if let name = resultData.vehicleInfo?.vName {
                        return name.lowercased().contains(text.lowercased())
                    }
                    return false
                })
            self.filteredData.1 = data ?? []
                if textField.text == nil || textField.text == "" {
                    isFiltered = false
                }else {
                    isFiltered = true
                }
        }
        
        reloadTableView()
    }
//    pick_up_longitude=32.85127&from_country=tr&pick_up_latitude=37.655285&currency=TRY&drop_off_datetime=2023-02-27%2009%3A00%3A00&locale=tr&sort_by=recommended&drop_off_latitude=39.91235&pick_up_datetime=2023-02-26%2009%3A00%3A00&drop_off_longitude=32.85127"
    
    func getCarRentalInfo() {
        let request = CarRentalRequest(pick_up_longitude: 32.85127, pick_up_latitude: 37.655285, from_country: "tr", currency: "TRY", drop_off_datetime: "2023-02-27 09:00:00", locale: "tr", sort_by: "recommended", drop_off_latitude: 37.655285, pick_up_datetime: "2023-02-26 09:00:00", drop_off_longitude: 32.85127)
        NetworkManager.shared.carRentalList(request: request, completition: { result in
            switch result {
            case .success(let response):
                self.carRentalListResponse = response
            case .failure(let error):
                print(error)
            }
        })
    }
    
    func getHotelsInfo() {
        let request = PropertyListRequest(room_number: 1, dest_type: "city", order_by: "popularity", dest_id: -735338, locale: "tr", checkin_date: "2023-05-27", filter_by_currency: "TRY", checkout_date: "2023-05-28", adults_number: 1, units: "metric", include_adjacency: false, page_number: 0)
        NetworkManager.shared.propertyList(request: request, completition: { result in
            switch result {
            case .success(let response):
                self.propertlyListResponse = response
                self.reloadTableView()
            case .failure(let error):
                print(error)
            }
        })
    }
    
    func cleansingTextField() {
        searchTextField.text = nil
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
        cleansingTextField()
        isFiltered = false
        isSelected(button: hotelButton, button1: flightButton, isSelected: true, notSelected: false)
        searchListPageType = .hotel
        reloadTableView()
    }
    @IBAction func searchRentingCarButtonTapped(_ sender: Any) {
        cleansingTextField()
        isFiltered = false
        isSelected(button: flightButton, button1: hotelButton, isSelected: true, notSelected: false)
        searchListPageType = .carRental
        reloadTableView()
    }
    
}

extension SearchVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchListPageType == .hotel {
            if isFiltered {
                return filteredData.0.count
            }else {
                return propertlyListResponse?.result?.count ?? 0
            }
        }else {
            if isFiltered {
                return filteredData.1.count
            }else {
                return carRentalListResponse?.searchResults?.count ?? 0
            }
                
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchTableView.dequeueReusableCell(withIdentifier: SearchListTVC.identifier, for: indexPath) as! SearchListTVC
        if searchListPageType == .hotel {
            if isFiltered {
                cell.configureUI(result: filteredData.0[indexPath.row])
            }else {
                cell.configureUI(result: propertlyListResponse?.result?[indexPath.row])
            }
        }else {
            if isFiltered {
                cell.configureCarRentalUI(carRentalResult: filteredData.1[indexPath.row])
            }else {
                cell.configureCarRentalUI(carRentalResult: carRentalListResponse?.searchResults?[indexPath.row])
            }
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
