// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let propertyListResponse = try? newJSONDecoder().decode(PropertyListResponse.self, from: jsonData)

import Foundation

// MARK: - PropertyListResponse
struct PropertyListResponse: Codable {
    let sorting: Sorting?
    let bMaxLosData: BMaxLosData?
    let searchRadius: Int?
    let searchMetadata: String?
    let unfilteredCount: Int?
    let hasLowAvailability: String?
    let unfilteredPrimaryCount: Int?
    let baseFilters: [BaseFilter]?
    let isBeachUfi: Int?
    let result: [DataResult]?
    let mapBoundingBox: MapBoundingBox?
    let sort: [Sort]?
    let totalCountWithFilters: Int?
    let roomDistribution: [RoomDistribution]?
    let rankingVersion, extendedCount, count: Int?
    let primaryCount: Int?
    let recommendedFilters: [RecommendedFilter]?
    let searchID: String?
    let pageLoadingThreshold: Int?

    enum CodingKeys: String, CodingKey {
        case sorting
        case bMaxLosData = "b_max_los_data"
        case searchRadius = "search_radius"
        case searchMetadata = "search_metadata"
        case unfilteredCount = "unfiltered_count"
        case hasLowAvailability = "has_low_availability"
        case unfilteredPrimaryCount = "unfiltered_primary_count"
        case baseFilters = "base_filters"
        case isBeachUfi = "is_beach_ufi"
        case result
        case mapBoundingBox = "map_bounding_box"
        case sort
        case totalCountWithFilters = "total_count_with_filters"
        case roomDistribution = "room_distribution"
        case rankingVersion = "ranking_version"
        case extendedCount = "extended_count"
        case count
        case primaryCount = "primary_count"
        case recommendedFilters = "recommended_filters"
        case searchID = "search_id"
        case pageLoadingThreshold = "page_loading_threshold"
    }
}

// MARK: - BMaxLosData
struct BMaxLosData: Codable {
    let isFullon, extendedLos, maxAllowedLos, defaultLos: Int?
    let hasExtendedLos: Int?
    let experiment: String?

    enum CodingKeys: String, CodingKey {
        case isFullon = "is_fullon"
        case extendedLos = "extended_los"
        case maxAllowedLos = "max_allowed_los"
        case defaultLos = "default_los"
        case hasExtendedLos = "has_extended_los"
        case experiment
    }
}

// MARK: - BaseFilter
struct BaseFilter: Codable {
    let id: String?
    let layout: Layout?
    let iconfont: String?
    let isGroup: Int?
    let type: String?
    let sliderOptions: SliderOptions?
    let ireneRespID, title: String?
    let anyText: String?
    let categories: [Category]?
    let experimentTrackingData: BaseFilterExperimentTrackingData?

    enum CodingKeys: String, CodingKey {
        case id, layout, iconfont
        case isGroup = "is_group"
        case type
        case sliderOptions = "slider_options"
        case ireneRespID = "irene_resp_id"
        case title
        case anyText = "any_text"
        case categories
        case experimentTrackingData = "experiment_tracking_data"
    }
}

// MARK: - Category
struct Category: Codable {
    let name: String?
    let popularRank, styleForCount, popular, selected: Int?
    let id: String?
    let count: Int?
    let experimentTrackingData: CategoryExperimentTrackingData?

    enum CodingKeys: String, CodingKey {
        case name
        case popularRank = "popular_rank"
        case styleForCount = "style_for_count"
        case popular, selected, id, count
        case experimentTrackingData = "experiment_tracking_data"
    }
}

// MARK: - CategoryExperimentTrackingData
struct CategoryExperimentTrackingData: Codable {
    let trackOnSelect: [TrackOn]?

    enum CodingKeys: String, CodingKey {
        case trackOnSelect = "track_on_select"
    }
}

// MARK: - TrackOn
struct TrackOn: Codable {
    let experimentTag: String?
    let value, type: Int?

    enum CodingKeys: String, CodingKey {
        case experimentTag = "experiment_tag"
        case value, type
    }
}

// MARK: - BaseFilterExperimentTrackingData
struct BaseFilterExperimentTrackingData: Codable {
    let trackOnView: [TrackOn]?

    enum CodingKeys: String, CodingKey {
        case trackOnView = "track_on_view"
    }
}

// MARK: - Layout
struct Layout: Codable {
    let isCollapsed, collapsedCount, isCollapsable: Int?

    enum CodingKeys: String, CodingKey {
        case isCollapsed = "is_collapsed"
        case collapsedCount = "collapsed_count"
        case isCollapsable = "is_collapsable"
    }
}

// MARK: - SliderOptions
struct SliderOptions: Codable {
    let step, min, max: Int?
    let currency: String?
    let lengthOfStay, selected: Int?
    let minSelectedPretty, maxSelectedPretty: String?
    let histogram: [Int]?
    let value: String?

    enum CodingKeys: String, CodingKey {
        case step, min, max, currency
        case lengthOfStay = "length_of_stay"
        case selected
        case minSelectedPretty = "min_selected_pretty"
        case maxSelectedPretty = "max_selected_pretty"
        case histogram, value
    }
}

// MARK: - MapBoundingBox
struct MapBoundingBox: Codable {
    let swLat, neLong, neLat, swLong: Double?

    enum CodingKeys: String, CodingKey {
        case swLat = "sw_lat"
        case neLong = "ne_long"
        case neLat = "ne_lat"
        case swLong = "sw_long"
    }
}

// MARK: - RecommendedFilter
struct RecommendedFilter: Codable {
    let name, genericID: String?

    enum CodingKeys: String, CodingKey {
        case name
        case genericID = "generic_id"
    }
}

// MARK: - Result
struct DataResult: Codable {
    let longitude: Double?
    let ufi: Int?
    let city: String?
    let bookingHome: BookingHome?
    let classIsEstimated: Int?
    let countrycode, hotelNameTrans: String?
    let minTotalPrice: Double?
    let cityInTrans: String?
    let compositePriceBreakdown: PriceBreakdown?
    let ribbonText: String?
    let isGeniusDeal, preferred: Int?
    let matchingUnitsConfiguration: MatchingUnitsConfiguration?
    let nativeAdsCpc: Int?
    let checkout: Check?
    let bwallet: Bwallet?
    let hotelID, childrenNotAllowed: Int?
    let type: String?
    let reviewNr: Int?
    let badges: [Badge]?
    let unitConfigurationLabel: String?
    let mainPhotoURL: String?
    let nativeAdsTracking: String?
    let hotelHasVBBoost: Int?
    let timezone: String?
    let preferredPlus: Int?
    let hotelName, defaultLanguage: String?
    let resultClass: Int?
    let priceBreakdown: PriceBreakdownClass?
    let reviewScore: Double?
    let geniusDiscountPercentage, cantBook: Int?
    let checkin: Check?
    let isSmartDeal: Int?
    let currencycode: String?
    let blockIDS: [String]?
    let accommodationType: Int?
    let currencyCode: String?
    let mobileDiscountPercentage: Double?
    let nativeAdID, reviewScoreWord: String?
    let isFreeCancellable, priceIsFinal, isMobileDeal: Int?
    let id: String?
    let distances: [Distance]?
    let latitude: Double?
    let isNoPrepaymentBlock: Int?
    let accommodationTypeName: String?
    let extended: Int?
    let isGeoRate: IsGeoRate?
    let mainPhotoID: Int?
    let distanceToCcFormatted: String?
    let soldout: Int?
    let defaultWishlistName: String?
    let hotelIncludeBreakfast, hasSwimmingPool, hasFreeParking: Int?

    enum CodingKeys: String, CodingKey {
        case longitude, ufi, city
        case bookingHome = "booking_home"
        case classIsEstimated = "class_is_estimated"
        case countrycode
        case hotelNameTrans = "hotel_name_trans"
        case minTotalPrice = "min_total_price"
        case cityInTrans = "city_in_trans"
        case compositePriceBreakdown = "composite_price_breakdown"
        case ribbonText = "ribbon_text"
        case isGeniusDeal = "is_genius_deal"
        case preferred
        case matchingUnitsConfiguration = "matching_units_configuration"
        case nativeAdsCpc = "native_ads_cpc"
        case checkout, bwallet
        case hotelID = "hotel_id"
        case childrenNotAllowed = "children_not_allowed"
        case type
        case reviewNr = "review_nr"
        case badges
        case unitConfigurationLabel = "unit_configuration_label"
        case mainPhotoURL = "main_photo_url"
        case nativeAdsTracking = "native_ads_tracking"
        case hotelHasVBBoost = "hotel_has_vb_boost"
        case timezone
        case preferredPlus = "preferred_plus"
        case hotelName = "hotel_name"
        case defaultLanguage = "default_language"
        case resultClass = "class"
        case priceBreakdown = "price_breakdown"
        case reviewScore = "review_score"
        case geniusDiscountPercentage = "genius_discount_percentage"
        case cantBook = "cant_book"
        case checkin
        case isSmartDeal = "is_smart_deal"
        case currencycode
        case blockIDS = "block_ids"
        case accommodationType = "accommodation_type"
        case currencyCode = "currency_code"
        case mobileDiscountPercentage = "mobile_discount_percentage"
        case nativeAdID = "native_ad_id"
        case reviewScoreWord = "review_score_word"
        case isFreeCancellable = "is_free_cancellable"
        case priceIsFinal = "price_is_final"
        case isMobileDeal = "is_mobile_deal"
        case id, distances, latitude
        case isNoPrepaymentBlock = "is_no_prepayment_block"
        case accommodationTypeName = "accommodation_type_name"
        case extended
        case isGeoRate = "is_geo_rate"
        case mainPhotoID = "main_photo_id"
        case distanceToCcFormatted = "distance_to_cc_formatted"
        case soldout
        case defaultWishlistName = "default_wishlist_name"
        case hotelIncludeBreakfast = "hotel_include_breakfast"
        case hasSwimmingPool = "has_swimming_pool"
        case hasFreeParking = "has_free_parking"
    }
}

// MARK: - Badge
struct Badge: Codable {
    let text, badgeVariant, id: String?

    enum CodingKeys: String, CodingKey {
        case text
        case badgeVariant = "badge_variant"
        case id
    }
}

// MARK: - BookingHome
struct BookingHome: Codable {
    let isBookingHome: Int?
    let isSingleUnitProperty: String?
    let segment: Int?
    let group: String?
    let qualityClass: Int?

    enum CodingKeys: String, CodingKey {
        case isBookingHome = "is_booking_home"
        case isSingleUnitProperty = "is_single_unit_property"
        case segment, group
        case qualityClass = "quality_class"
    }
}

// MARK: - Bwallet
struct Bwallet: Codable {
    let hotelEligibility: Int?

    enum CodingKeys: String, CodingKey {
        case hotelEligibility = "hotel_eligibility"
    }
}

// MARK: - Check
struct Check: Codable {
    let until, from: String?
}

// MARK: - PriceBreakdown
struct PriceBreakdown: Codable {
    let grossAmountPerNight: AllInclusiveAmount?
    let hasLongStaysMonthlyRatePrice: Int?
    let grossAmountHotelCurrency, includedTaxesAndChargesAmount, grossAmount: AllInclusiveAmount?
    let benefits: [Benefit]?
    let hasLongStaysWeeklyRatePrice: Int?
    let excludedAmount, allInclusiveAmount, discountedAmount, strikethroughAmount: AllInclusiveAmount?
    let netAmount, strikethroughAmountPerNight: AllInclusiveAmount?
    let productPriceBreakdowns: [PriceBreakdown]?
    let items: [Item]?

    enum CodingKeys: String, CodingKey {
        case grossAmountPerNight = "gross_amount_per_night"
        case hasLongStaysMonthlyRatePrice = "has_long_stays_monthly_rate_price"
        case grossAmountHotelCurrency = "gross_amount_hotel_currency"
        case includedTaxesAndChargesAmount = "included_taxes_and_charges_amount"
        case grossAmount = "gross_amount"
        case benefits
        case hasLongStaysWeeklyRatePrice = "has_long_stays_weekly_rate_price"
        case excludedAmount = "excluded_amount"
        case allInclusiveAmount = "all_inclusive_amount"
        case discountedAmount = "discounted_amount"
        case strikethroughAmount = "strikethrough_amount"
        case netAmount = "net_amount"
        case strikethroughAmountPerNight = "strikethrough_amount_per_night"
        case productPriceBreakdowns = "product_price_breakdowns"
        case items
    }
}

// MARK: - AllInclusiveAmount
struct AllInclusiveAmount: Codable {
    let value: Double?
    let currency: String?
}

// MARK: - Benefit
struct Benefit: Codable {
    let identifier, badgeVariant, name, details: String?
    let kind: String?

    enum CodingKeys: String, CodingKey {
        case identifier
        case badgeVariant = "badge_variant"
        case name, details, kind
    }
}

// MARK: - Item
struct Item: Codable {
    let details, name, inclusionType: String?
    let base: Base?
    let itemAmount: AllInclusiveAmount?
    let kind, identifier: String?

    enum CodingKeys: String, CodingKey {
        case details, name
        case inclusionType = "inclusion_type"
        case base
        case itemAmount = "item_amount"
        case kind, identifier
    }
}

// MARK: - Base
struct Base: Codable {
    let baseAmount: Double?
    let kind: String?
    let percentage: Double?

    enum CodingKeys: String, CodingKey {
        case baseAmount = "base_amount"
        case kind, percentage
    }
}

// MARK: - Distance
struct Distance: Codable {
    let text: String?
    let iconName: String?

    enum CodingKeys: String, CodingKey {
        case text
        case iconName = "icon_name"
    }
}

enum IsGeoRate: Codable {
    case integer(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(IsGeoRate.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for IsGeoRate"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - MatchingUnitsConfiguration
struct MatchingUnitsConfiguration: Codable {
    let matchingUnitsCommonConfig: MatchingUnitsCommonConfig?

    enum CodingKeys: String, CodingKey {
        case matchingUnitsCommonConfig = "matching_units_common_config"
    }
}

// MARK: - MatchingUnitsCommonConfig
struct MatchingUnitsCommonConfig: Codable {
    let localizedArea: String?
    let unitTypeID: Int?

    enum CodingKeys: String, CodingKey {
        case localizedArea = "localized_area"
        case unitTypeID = "unit_type_id"
    }
}

// MARK: - PriceBreakdownClass
struct PriceBreakdownClass: Codable {
    let allInclusivePrice: Double?
    let currency: String?
    let grossPrice: GrossPrice?
    let hasFinePrintCharges, hasIncalculableCharges, hasTaxExceptions: Int?

    enum CodingKeys: String, CodingKey {
        case allInclusivePrice = "all_inclusive_price"
        case currency
//        case sumExcludedRaw = "sum_excluded_raw"
        case grossPrice = "gross_price"
        case hasFinePrintCharges = "has_fine_print_charges"
        case hasIncalculableCharges = "has_incalculable_charges"
        case hasTaxExceptions = "has_tax_exceptions"
    }
}

enum GrossPrice: Codable {
    case double(Double)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Double.self) {
            self = .double(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(GrossPrice.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for GrossPrice"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .double(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - RoomDistribution
struct RoomDistribution: Codable {
    let adults: String?
    let children: [Int]?
}

// MARK: - Sort
struct Sort: Codable {
    let id, name: String?
}

// MARK: - Sorting
struct Sorting: Codable {
    let options: [Option]?
    let selectedIdentifier: String?

    enum CodingKeys: String, CodingKey {
        case options
        case selectedIdentifier = "selected_identifier"
    }
}

// MARK: - Option
struct Option: Codable {
    let identifier, name: String?

    enum CodingKeys: String, CodingKey {
        case identifier, name
    }
}

// MARK: - Encode/decode helpers

//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
//    public var hashValue: Int {
//        return 0
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}
//
//class JSONCodingKey: CodingKey {
//    let key: String
//
//    required init?(intValue: Int) {
//        return nil
//    }
//
//    required init?(stringValue: String) {
//        key = stringValue
//    }
//
//    var intValue: Int? {
//        return nil
//    }
//
//    var stringValue: String {
//        return key
//    }
//}
//
//class JSONAny: Codable {
//
//    let value: Any
//
//    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
//        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
//        return DecodingError.typeMismatch(JSONAny.self, context)
//    }
//
//    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
//        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
//        return EncodingError.invalidValue(value, context)
//    }
//
//    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if container.decodeNil() {
//            return JSONNull()
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if let value = try? container.decodeNil() {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer() {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
//        if let value = try? container.decode(Bool.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Double.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(String.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decodeNil(forKey: key) {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
//        var arr: [Any] = []
//        while !container.isAtEnd {
//            let value = try decode(from: &container)
//            arr.append(value)
//        }
//        return arr
//    }
//
//    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
//        var dict = [String: Any]()
//        for key in container.allKeys {
//            let value = try decode(from: &container, forKey: key)
//            dict[key.stringValue] = value
//        }
//        return dict
//    }
//
//    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
//        for value in array {
//            if let value = value as? Bool {
//                try container.encode(value)
//            } else if let value = value as? Int64 {
//                try container.encode(value)
//            } else if let value = value as? Double {
//                try container.encode(value)
//            } else if let value = value as? String {
//                try container.encode(value)
//            } else if value is JSONNull {
//                try container.encodeNil()
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer()
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
//        for (key, value) in dictionary {
//            let key = JSONCodingKey(stringValue: key)!
//            if let value = value as? Bool {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Int64 {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Double {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? String {
//                try container.encode(value, forKey: key)
//            } else if value is JSONNull {
//                try container.encodeNil(forKey: key)
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer(forKey: key)
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
//        if let value = value as? Bool {
//            try container.encode(value)
//        } else if let value = value as? Int64 {
//            try container.encode(value)
//        } else if let value = value as? Double {
//            try container.encode(value)
//        } else if let value = value as? String {
//            try container.encode(value)
//        } else if value is JSONNull {
//            try container.encodeNil()
//        } else {
//            throw encodingError(forValue: value, codingPath: container.codingPath)
//        }
//    }
//
//    public required init(from decoder: Decoder) throws {
//        if var arrayContainer = try? decoder.unkeyedContainer() {
//            self.value = try JSONAny.decodeArray(from: &arrayContainer)
//        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
//            self.value = try JSONAny.decodeDictionary(from: &container)
//        } else {
//            let container = try decoder.singleValueContainer()
//            self.value = try JSONAny.decode(from: container)
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        if let arr = self.value as? [Any] {
//            var container = encoder.unkeyedContainer()
//            try JSONAny.encode(to: &container, array: arr)
//        } else if let dict = self.value as? [String: Any] {
//            var container = encoder.container(keyedBy: JSONCodingKey.self)
//            try JSONAny.encode(to: &container, dictionary: dict)
//        } else {
//            var container = encoder.singleValueContainer()
//            try JSONAny.encode(to: &container, value: self.value)
//        }
//    }
//}
