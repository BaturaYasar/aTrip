//
//  PropertyListResponse.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 25/11/2022.

import Foundation

// MARK: - PropertyListResponse
struct PropertyListResponse: Codable {
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let propertySearch: PropertySearch?
}

// MARK: - PropertySearch
struct PropertySearch: Codable {
    let typename: String?
    let filterMetadata: FilterMetadata?
    let universalSortAndFilter: UniversalSortAndFilter?
    let properties, propertySearchListings: [Property]?
    let summary: Summary?
    let searchCriteria: SearchCriteria?
    let shoppingContext: ShoppingContext?
    let map: Map?
    let clickstream: Clickstream?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case filterMetadata, universalSortAndFilter, properties, propertySearchListings, summary, searchCriteria, shoppingContext, map, clickstream
    }
}

// MARK: - Clickstream
struct Clickstream: Codable {
    let typename: String?
    let searchResultsViewed: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case searchResultsViewed
    }
}

// MARK: - FilterMetadata
struct FilterMetadata: Codable {
    let typename: String?
    let amenities: [Amenity]?
    let neighborhoods: [NeighborhoodElement]?
    let priceRange: PriceRange?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case amenities, neighborhoods, priceRange
    }
}

// MARK: - Amenity
struct Amenity: Codable {
    let typename: String?
    let id: Int?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case id
    }
}

// MARK: - NeighborhoodElement
struct NeighborhoodElement: Codable {
    let typename, name, regionID: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case name
        case regionID = "regionId"
    }
}

// MARK: - PriceRange
struct PriceRange: Codable {
    let typename: String?
    let max, min: Double?
    let id: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case max, min, id
    }
}

// MARK: - Map
struct Map: Codable {
    let typename: String?
    let subtitle: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case subtitle
    }
}

// MARK: - Property
struct Property: Codable {
    let typename, id: String?
    let featuredMessages: [JSONAny]?
    let name: String?
    let availability: Availability?
    let propertyImage: PropertyImage?
    let destinationInfo: DestinationInfo?
    let legalDisclaimer, listingFooter: JSONNull?
    let mapMarker: MapMarker?
    let neighborhood: PropertyNeighborhood?
    let offerBadge: OfferBadge?
    let offerSummary: OfferSummary?
    let pinnedDetails: JSONNull?
    let price: PropertyPrice?
    let priceAfterLoyaltyPointsApplied: PriceAfterLoyaltyPointsApplied?
    let propertyFees: [JSONAny]?
    let reviews: Reviews?
    let sponsoredListing, star, supportingMessages: JSONNull?
    let regionID: String?
    let priceMetadata: PriceMetadata?
    let saveTripItem: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case id, featuredMessages, name, availability, propertyImage, destinationInfo, legalDisclaimer, listingFooter, mapMarker, neighborhood, offerBadge, offerSummary, pinnedDetails, price, priceAfterLoyaltyPointsApplied, propertyFees, reviews, sponsoredListing, star, supportingMessages
        case regionID = "regionId"
        case priceMetadata, saveTripItem
    }
}

// MARK: - Availability
struct Availability: Codable {
    let typename: String?
    let available: Bool?
    let minRoomsLeft: Int?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case available, minRoomsLeft
    }
}

// MARK: - DestinationInfo
struct DestinationInfo: Codable {
    let typename: String?
    let distanceFromDestination: DistanceFromDestination?
    let distanceFromMessaging: JSONNull?
    let regionID: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case distanceFromDestination, distanceFromMessaging
        case regionID = "regionId"
    }
}

// MARK: - DistanceFromDestination
struct DistanceFromDestination: Codable {
    let typename, unit: String?
    let value: Double?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case unit, value
    }
}

// MARK: - MapMarker
struct MapMarker: Codable {
    let typename, label: String?
    let latLong: LatLong?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case label, latLong
    }
}

// MARK: - LatLong
struct LatLong: Codable {
    let typename: String?
    let latitude, longitude: Double?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case latitude, longitude
    }
}

// MARK: - PropertyNeighborhood
struct PropertyNeighborhood: Codable {
    let typename, name: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case name
    }
}

// MARK: - OfferBadge
struct OfferBadge: Codable {
    let typename: String?
    let primary: Ary?
    let secondary: Ary?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case primary, secondary
    }
}

// MARK: - Ary
struct Ary: Codable {
    let typename, text, themeTemp: String?
    let iconTemp: IconTemp?
    let mark: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case text
        case themeTemp = "theme_temp"
        case iconTemp = "icon_temp"
        case mark
    }
}

// MARK: - IconTemp
struct IconTemp: Codable {
    let typename, id, iconTempDescription, token: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case id
        case iconTempDescription = "description"
        case token
    }
}

// MARK: - OfferSummary
struct OfferSummary: Codable {
    let typename: String?
    let messages: [Message]?
    let attributes: [PricingScheme]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case messages, attributes
    }
}

// MARK: - PricingScheme
struct PricingScheme: Codable {
    let typename, type: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case type
    }
}

// MARK: - Message
struct Message: Codable {
    let typename, message: String?
    let theme: String?
    let type: String?
    let mark: IconTemp?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case message, theme, type, mark
    }
}

// MARK: - PropertyPrice
struct PropertyPrice: Codable {
    let typename: String?
    let options: [PriceOption]?
    let priceMessaging: JSONNull?
    let lead: Lead?
    let strikeOut: Lead?
    let displayMessages: [DisplayMessage]?
    let strikeOutType: String?
    let priceMessages: [PriceMessage]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case options, priceMessaging, lead, strikeOut, displayMessages, strikeOutType, priceMessages
    }
}

// MARK: - DisplayMessage
struct DisplayMessage: Codable {
    let typename: String?
    let lineItems: [LineItem]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case lineItems
    }
}

// MARK: - LineItem
struct LineItem: Codable {
    let typename: String?
    let disclaimer: Disclaimer?
    let price: LineItemPrice?
    let role: String?
    let accessibilityLabel, mark, state: JSONNull?
    let value: String?
    let badge: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case disclaimer, price, role, accessibilityLabel, mark, state, value, badge
    }
}

// MARK: - Disclaimer
struct Disclaimer: Codable {
    let typename: String?
    let content: [String]?
    let title: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case content, title
    }
}

// MARK: - LineItemPrice
struct LineItemPrice: Codable {
    let typename, formatted, accessibilityLabel: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case formatted, accessibilityLabel
    }
}

// MARK: - Lead
struct Lead: Codable {
    let typename: String?
    let amount: Double?
    let currencyInfo: CurrencyInfo?
    let formatted: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case amount, currencyInfo, formatted
    }
}

// MARK: - CurrencyInfo
struct CurrencyInfo: Codable {
    let typename, code, symbol: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case code, symbol
    }
}

// MARK: - PriceOption
struct PriceOption: Codable {
    let typename: String?
    let strikeOut: Lead?
    let disclaimer: PriceMessage?
    let formattedDisplayPrice: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case strikeOut, disclaimer, formattedDisplayPrice
    }
}

// MARK: - PriceMessage
struct PriceMessage: Codable {
    let typename: String?
    let value: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case value
    }
}

// MARK: - PriceAfterLoyaltyPointsApplied
struct PriceAfterLoyaltyPointsApplied: Codable {
    let typename: String?
    let options: [JSONAny]?
    let lead: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case options, lead
    }
}

// MARK: - PriceMetadata
struct PriceMetadata: Codable {
    let typename: String?
    let discountType: String?
    let rateDiscount: RateDiscount?
    let totalDiscountPercentage: Int?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case discountType, rateDiscount, totalDiscountPercentage
    }
}

// MARK: - RateDiscount
struct RateDiscount: Codable {
    let typename: String?
    let rateDiscountDescription: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case rateDiscountDescription = "description"
    }
}

// MARK: - PropertyImage
struct PropertyImage: Codable {
    let typename, alt: String?
    let fallbackImage: JSONNull?
    let image: Image?
    let subjectID: Int?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case alt, fallbackImage, image
        case subjectID = "subjectId"
    }
}

// MARK: - Image
struct Image: Codable {
    let typename, imageDescription: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case imageDescription = "description"
        case url
    }
}

// MARK: - Reviews
struct Reviews: Codable {
    let typename: String?
    let score: Double?
    let total: Int?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case score, total
    }
}

// MARK: - SearchCriteria
struct SearchCriteria: Codable {
    let typename: String?
    let resolvedDateRange: ResolvedDateRange?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case resolvedDateRange
    }
}

// MARK: - ResolvedDateRange
struct ResolvedDateRange: Codable {
    let typename: String?
    let checkInDate, checkOutDate: CheckDate?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case checkInDate, checkOutDate
    }
}

// MARK: - CheckDate
struct CheckDate: Codable {
    let typename: String?
    let day, month, year: Int?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case day, month, year
    }
}

// MARK: - ShoppingContext
struct ShoppingContext: Codable {
    let typename: String?
    let multiItem: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case multiItem
    }
}

// MARK: - Summary
struct Summary: Codable {
    let typename: String?
    let matchedPropertiesSize: Int?
    let pricingScheme: PricingScheme?
    let regionCompression, loyaltyInfo: JSONNull?
    let resultsTitleModel: ResultsTitleModel?
    let resultsSummary: [ResultsSummary]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case matchedPropertiesSize, pricingScheme, regionCompression, loyaltyInfo, resultsTitleModel, resultsSummary
    }
}

// MARK: - ResultsSummary
struct ResultsSummary: Codable {
    let typename, accessibilityLabel, value: String?
    let link: Link?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case accessibilityLabel, value, link
    }
}

// MARK: - Link
struct Link: Codable {
    let typename: String?
    let clientSideAnalytics: Analytics?
    let uri: PriceMessage?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case clientSideAnalytics, uri
    }
}

// MARK: - Analytics
struct Analytics: Codable {
    let typename, linkName, referrerID: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case linkName
        case referrerID = "referrerId"
    }
}

// MARK: - ResultsTitleModel
struct ResultsTitleModel: Codable {
    let typename, header: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case header
    }
}

// MARK: - UniversalSortAndFilter
struct UniversalSortAndFilter: Codable {
    let typename: String?
    let toolbar: Toolbar?
    let revealAction, applyAction: Action?
    let filterSections: [FilterSection]?
    let sortSections: [SortSection]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case toolbar, revealAction, applyAction, filterSections, sortSections
    }
}

// MARK: - Action
struct Action: Codable {
    let typename, primary: String?
    let action: ActionClass?
    let accessibility: String?
    let badge: Int?
    let disabled: Bool?
    let icon: Icon?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case primary, action, accessibility, badge, disabled, icon
    }
}

// MARK: - ActionClass
struct ActionClass: Codable {
    let typename, actionType: String?
    let accessibility: String?
    let analytics: Analytics?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case actionType, accessibility, analytics
    }
}

// MARK: - Icon
struct Icon: Codable {
    let typename, id, iconDescription: String?
    let size: JSONNull?
    let token: String?
    let theme: JSONNull?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case id
        case iconDescription = "description"
        case size, token, theme
    }
}

// MARK: - FilterSection
struct FilterSection: Codable {
    let typename, title: String?
    let fields: [FilterSectionField]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case title, fields
    }
}

// MARK: - FilterSectionField
struct FilterSectionField: Codable {
    let typename: String?
    let primary: String?
    let secondary: JSONNull?
    let action: ActionClass?
    let id: String?
    let label: JSONNull?
    let placeholder: String?
    let selected: JSONNull?
    let typeaheadInfo: TypeaheadInfo?
    let icon: Icon?
    let analytics: Analytics?
    let expando: Expando?
    let multiSelectionOptions: [MultiSelectionOptionElement]?
    let range: Range?
    let options, tileMultiSelectionOptions: [MultiSelectionOptionElement]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case primary, secondary, action, id, label, placeholder, selected, typeaheadInfo, icon, analytics, expando, multiSelectionOptions, range, options, tileMultiSelectionOptions
    }
}

// MARK: - Expando
struct Expando: Codable {
    let typename: String?
    let threshold: Int?
    let collapseLabel, expandLabel: String?
    let collapseAnalytics, expandAnalytics: Analytics?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case threshold, collapseLabel, expandLabel, collapseAnalytics, expandAnalytics
    }
}

// MARK: - MultiSelectionOptionElement
struct MultiSelectionOptionElement: Codable {
    let typename, id, primary: String?
    let secondary: String?
    let icon: Icon?
    let analytics: Analytics?
    let value: String?
    let optionDescription: String?
    let selected, disabled, optionDefault: Bool?
    let selectAnalytics, deselectAnalytics: Analytics?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case id, primary, secondary, icon, analytics, value
        case optionDescription = "description"
        case selected, disabled
        case optionDefault = "default"
        case selectAnalytics, deselectAnalytics
    }
}

// MARK: - Range
struct Range: Codable {
    let typename, id, primary: String?
    let secondary, icon: JSONNull?
    let analytics: Analytics?
    let selected: PriceRange?
    let characteristics: Characteristics?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case id, primary, secondary, icon, analytics, selected, characteristics
    }
}

// MARK: - Characteristics
struct Characteristics: Codable {
    let typename: String?
    let min, max, step: Int?
    let labels: [Label]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case min, max, step, labels
    }
}

// MARK: - Label
struct Label: Codable {
    let typename, label: String?
    let value: Int?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case label, value
    }
}

// MARK: - TypeaheadInfo
struct TypeaheadInfo: Codable {
    let typename, client: String?
    let isDestination: Bool?
    let lineOfBusiness: String?
    let maxNumberOfResults: Int?
    let packageType: JSONNull?
    let personalize: Bool?
    let regionType: Int?
    let typeaheadFeatures: String?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case client, isDestination, lineOfBusiness, maxNumberOfResults, packageType, personalize, regionType, typeaheadFeatures
    }
}

// MARK: - SortSection
struct SortSection: Codable {
    let typename: String?
    let title: JSONNull?
    let fields: [SortSectionField]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case title, fields
    }
}

// MARK: - SortSectionField
struct SortSectionField: Codable {
    let typename, primary: String?
    let secondary: JSONNull?
    let dropdownFilterOptions: [MultiSelectionOptionElement]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case primary, secondary, dropdownFilterOptions
    }
}

// MARK: - Toolbar
struct Toolbar: Codable {
    let typename, primary: String?
    let actions: Actions?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case primary, actions
    }
}

// MARK: - Actions
struct Actions: Codable {
    let typename: String?
    let primary: Primary?
    let secondaries: [Secondary]?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case primary, secondaries
    }
}

// MARK: - Primary
struct Primary: Codable {
    let typename: String?
    let primary: JSONNull?
    let action: ActionClass?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case primary, action
    }
}

// MARK: - Secondary
struct Secondary: Codable {
    let typename, primary: String?
    let disabled: Bool?
    let action: ActionClass?

    enum CodingKeys: String, CodingKey {
        case typename = "__typename"
        case primary, disabled, action
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
