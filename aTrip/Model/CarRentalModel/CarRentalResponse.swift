//
//  CarRentalResponse.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 10/12/2022.
//

import Foundation

// MARK: - CarRentalResponse
struct CarRentalResponse: Codable {
    let searchResults: [SearchResult]?
    let count: Int?
    let title, type, searchKey: String?
    let sort: [Sort]?
    let isGeniusLocation: Bool?
   
    let provider: String?
    let meta: Meta?

    enum CodingKeys: String, CodingKey {
        case searchResults = "search_results"
        case count, title, type
        case searchKey = "search_key"
        case sort
        case isGeniusLocation = "is_genius_location"
        case provider, meta
    }
}
// MARK: - Category
struct CarDataCategory: Codable {
    let name, id: String?
}

// MARK: - Layout
struct CarDataLayout: Codable {
    let layoutType, isCollapsable, isCollapsed: Bool?
    let collapsedCount: Int?

    enum CodingKeys: String, CodingKey {
        case layoutType = "layout_type"
        case isCollapsable = "is_collapsable"
        case isCollapsed = "is_collapsed"
        case collapsedCount = "collapsed_count"
    }
}

// MARK: - Meta
struct Meta: Codable {
    let responseCode: Int?

    enum CodingKeys: String, CodingKey {
        case responseCode = "response_code"
    }
}

// MARK: - SearchResult
struct SearchResult: Codable {
    let feeInfo: FeeInfo?
    let routeInfo: RouteInfo?
    let pricingInfo: PricingInfo?
    let ratingInfo: RatingInfo?
    let content: SearchResultContent?
    let accessibility: Accessibility?
    let freebies: [String]?
    let supplierInfo: SupplierInfo?
    let vehicleInfo: VehicleInfo?

    enum CodingKeys: String, CodingKey {
        case feeInfo = "fee_info"
        case routeInfo = "route_info"
        case pricingInfo = "pricing_info"
        case ratingInfo = "rating_info"
        case content, accessibility, freebies
        case supplierInfo = "supplier_info"
        case vehicleInfo = "vehicle_info"
    }
}

// MARK: - Accessibility
struct Accessibility: Codable {
    let supplierRating, transmission, fuelPolicy, pickUpLocation: String?

    enum CodingKeys: String, CodingKey {
        case supplierRating = "supplier_rating"
        case transmission
        case fuelPolicy = "fuel_policy"
        case pickUpLocation = "pick_up_location"
    }
}

// MARK: - SearchResultContent
struct SearchResultContent: Codable {
    let badges: [Badge]?
}

// MARK: - Badge
struct DataBadge: Codable {
    let variation, type, text: String?
}

// MARK: - FeeInfo
struct FeeInfo: Codable {
    let fee, tax: Int?
    let currency, type: String?
}

// MARK: - PricingInfo
struct PricingInfo: Codable {
    let quoteAllowed: Int?
    let deposit, driveAwayPrice: Double?
    let currency: String?
    let baseDeposit, price: Double?
    let feeBreakdown: FeeBreakdown?
    let driveAwayPriceIsApprox: Bool?
    let payWhen, baseCurrency: String?
    let discount: Int?
    let basePrice: Double?

    enum CodingKeys: String, CodingKey {
        case quoteAllowed = "quote_allowed"
        case deposit
        case driveAwayPrice = "drive_away_price"
        case currency
        case baseDeposit = "base_deposit"
        case price
        case feeBreakdown = "fee_breakdown"
        case driveAwayPriceIsApprox = "drive_away_price_is_approx"
        case payWhen = "pay_when"
        case baseCurrency = "base_currency"
        case discount
        case basePrice = "base_price"
    }
}

// MARK: - FeeBreakdown
struct FeeBreakdown: Codable {
    let fuelPolicy: FuelPolicy?
    let knownFees: [KnownFee]?

    enum CodingKeys: String, CodingKey {
        case fuelPolicy = "fuel_policy"
        case knownFees = "known_fees"
    }
}

// MARK: - FuelPolicy
struct FuelPolicy: Codable {
    let amount: Int?
    let currency, type: String?
}

// MARK: - KnownFee
struct KnownFee: Codable {
    let currency: String?
    let amount: Double?
    let isAlwaysPayable: Int?
    let maxAmount: Double?
    let isTaxIncluded: Int?
    let minAmount: Double?
    let type: String?

    enum CodingKeys: String, CodingKey {
        case currency, amount
        case isAlwaysPayable = "is_always_payable"
        case maxAmount = "max_amount"
        case isTaxIncluded = "is_tax_included"
        case minAmount = "min_amount"
        case type
        
    }
}

//// MARK: - DistanceAllowed
//struct DistanceAllowed: Codable {
//    let value: JSONNull?
//    let isKM, isUnlimited: Int?
//    let perDuration: JSONNull?
//
//    enum CodingKeys: String, CodingKey {
//        case value
//        case isKM = "is_km"
//        case isUnlimited = "is_unlimited"
//        case perDuration = "per_duration"
//    }
//}

// MARK: - RatingInfo
struct RatingInfo: Codable {
    let average, pickupTime: Double?
    let noOfRatings: Int?
    let cleanliness, valueForMoney, condition, location: Double?
    let efficiency, dropoffTime: Double?
    let averageText: String?

    enum CodingKeys: String, CodingKey {
        case average
        case pickupTime = "pickup_time"
        case noOfRatings = "no_of_ratings"
        case cleanliness
        case valueForMoney = "value_for_money"
        case condition, location, efficiency
        case dropoffTime = "dropoff_time"
        case averageText = "average_text"
    }
}

// MARK: - RouteInfo
struct RouteInfo: Codable {
    let dropoff, pickup: Dropoff?
}

// MARK: - Dropoff
struct Dropoff: Codable {
    let name, locationID, icon, longitude: String?
    let address, country, locationType, city: String?
    let latitude, countryCode: String?

    enum CodingKeys: String, CodingKey {
        case name
        case locationID = "location_id"
        case icon, longitude, address, country
        case locationType = "location_type"
        case city, latitude
        case countryCode = "country_code"
    }
}

// MARK: - SupplierInfo
struct SupplierInfo: Codable {
    let mayRequireCreditCardGuarantee: Bool?
    let name, dropoffInstructions, address: String?
    let logoURL: String?
    let longitude, locationType, pickupInstructions, latitude: String?

    enum CodingKeys: String, CodingKey {
        case mayRequireCreditCardGuarantee = "may_require_credit_card_guarantee"
        case name
        case dropoffInstructions = "dropoff_instructions"
        case address
        case logoURL = "logo_url"
        case longitude
        case locationType = "location_type"
        case pickupInstructions = "pickup_instructions"
        case latitude
    }
}

// MARK: - VehicleInfo
struct VehicleInfo: Codable {
    let imageURL: String?
    let aircon: Int?
    let fuelPolicyDescription, seats, vName, mileage: String?
    let specialOfferText: String?
    let group: String?
    let airbags: Int?
    let transmission, doors: String?
    let badges: Badges?
    let freeCancellation: Int?
    let insurancePackage, fuelPolicy: String?
    let cmaCompliant: Int?
    let imageThumbnailURL: String?
    let label, fuelType: String?
    let unlimitedMileage: Int?
    let suitcases: Suitcases?
    let vID: String?

    enum CodingKeys: String, CodingKey {
        case imageURL = "image_url"
        case aircon
        case fuelPolicyDescription = "fuel_policy_description"
        case seats
        case vName = "v_name"
        case mileage
        case specialOfferText = "special_offer_text"
        case group, airbags, transmission, doors, badges
        case freeCancellation = "free_cancellation"
        case insurancePackage = "insurance_package"
        case fuelPolicy = "fuel_policy"
        case cmaCompliant = "cma_compliant"
        case imageThumbnailURL = "image_thumbnail_url"
        case label
        case fuelType = "fuel_type"
        case unlimitedMileage = "unlimited_mileage"
        case suitcases
        case vID = "v_id"
    }
}

// MARK: - Badges
struct Badges: Codable {
    let greenVehicle: String?
}

// MARK: - Suitcases
struct Suitcases: Codable {
    let big, small: String?
}

// MARK: - Sort
struct DataSort: Codable {
    let name, titleTag, identifier: String?

    enum CodingKeys: String, CodingKey {
        case name
        case titleTag = "title_tag"
        case identifier
    }
}
