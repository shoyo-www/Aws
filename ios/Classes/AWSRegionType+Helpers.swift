import AWSCore

extension AWSRegionType {
    /**
     Return an AWSRegionType for the given string

     - Parameter regionString: The Region name (e.g. us-east-1) as a string

     - Returns: A new AWSRegionType for the given string, Unknown if no region was found.
     */
    static func regionTypeForString(regionString: String) -> AWSRegionType {
        switch regionString {
        case "us-east-1": return .USEast1
        case "us-west-1": return .USWest1
        case "us-west-2": return .USWest2
        case "eu-west-1": return .EUWest1
        case "eu-central-1": return .EUCentral1
        case "eu-north-1": return .EUNorth1 // Added case for eu-north-1
        case "ap-northeast-1": return .APNortheast1
        case "ap-northeast-2": return .APNortheast2
        case "ap-southeast-1": return .APSoutheast1
        case "ap-southeast-2": return .APSoutheast2
        case "sa-east-1": return .SAEast1
        case "cn-north-1": return .CNNorth1
        case "us-gov-west-1": return .USGovWest1
        default: return .Unknown
        }
    }

    /**
     Return the string representation of the AWSRegionType

     - Returns: The string representation of the AWSRegionType.
     */
    var stringValue: String {
        switch self {
        case .USEast1: return "us-east-1"
        case .USWest1: return "us-west-1"
        case .USWest2: return "us-west-2"
        case .EUWest1: return "eu-west-1"
        case .EUCentral1: return "eu-central-1"
        case .EUNorth1: return "eu-north-1" // Added case for eu-north-1
        case .APNortheast1: return "ap-northeast-1"
        case .APNortheast2: return "ap-northeast-2"
        case .APSoutheast1: return "ap-southeast-1"
        case .APSoutheast2: return "ap-southeast-2"
        case .SAEast1: return "sa-east-1"
        case .CNNorth1: return "cn-north-1"
        case .USGovWest1: return "us-gov-west-1"
        default: return "Unknown"
        }
    }

    /**
     Return the physical region (e.g. us) of the AWSRegionType

     - Returns: The physical region of the AWSRegionType as a string.
     */
    var physicalRegion: String {
        switch self {
        case .USEast1, .USWest1, .USWest2: return "us"
        case .EUWest1, .EUCentral1, .EUNorth1: return "eu" // Added eu-north-1 to 'eu'
        case .APNortheast1, .APNortheast2, .APSoutheast1, .APSoutheast2: return "ap"
        case .SAEast1: return "sa"
        case .CNNorth1: return "cn"
        case .USGovWest1: return "us-gov"
        default: return "Unknown"
        }
    }
    /**
     Return the physical location (e.g. N. Virginia) of the AWSRegionType

     - Returns: The physical location of the AWSRegionType as a string.
     */
    var physicalLocation: String {
        switch self {
        case .USEast1: return "N. Virginia"
        case .USWest1: return "N. California"
        case .USWest2: return "Oregon"
        case .EUWest1: return "Ireland"
        case .EUCentral1: return "Frankfurt"
        case .EUNorth1: return "Stockholm" // Added physical location for eu-north-1
        case .APNortheast1: return "Tokyo"
        case .APNortheast2: return "Seoul"
        case .APSoutheast1: return "Singapore"
        case .APSoutheast2: return "Sydney"
        case .SAEast1: return "Sao Paulo"
        case .CNNorth1: return "Beijing"
        case .USGovWest1: return "US"
        default: return "Unknown"
        }
    }
    /**
     Return the full name (e.g. US East (N. Virginia)) of the AWSRegionType

     - Returns: The full name of the AWSRegionType as a string.
     */
    var name: String {
        switch self {
        case .USEast1: return "US East (N. Virginia)"
        case .USWest1: return "US West (N. California)"
        case .USWest2: return "US West (Oregon)"
        case .EUWest1: return "EU (Ireland)"
        case .EUCentral1: return "EU (Frankfurt)"
        case .EUNorth1: return "EU (Stockholm)" // Added full name for eu-north-1
        case .APNortheast1: return "Asia Pacific (Tokyo)"
        case .APNortheast2: return "Asia Pacific (Seoul)"
        case .APSoutheast1: return "Asia Pacific (Singapore)"
        case .APSoutheast2: return "Asia Pacific (Sydney)"
        case .SAEast1: return "South America (Sao Paulo)"
        case .CNNorth1: return "China (Beijing)"
        case .USGovWest1: return "AWS GovCloud (US)"
        default: return "Unknown"
        }
    }
    /**
     Return the cardinal direction (e.g. East) of the AWSRegionType

     - Returns: The cardinal direction of the AWSRegionType as a string.
     */
    var cardinalDirection: String {
        switch self {
        case .USEast1, .SAEast1: return "East"
        case .USWest1, .USWest2, .EUWest1, .USGovWest1: return "West"
        case .EUCentral1: return "Central"
        case .EUNorth1: return "North" // Added cardinal direction for eu-north-1
        case .APNortheast1, .APNortheast2: return "Northeast"
        case .APSoutheast1, .APSoutheast2: return "Southeast"
        case .CNNorth1: return "North"
        default: return "Unknown"
        }
    }
    /**
     Return the number (e.g. 1) of the AWSRegionType

     - Returns: The number of the AWSRegionType as an integer.
     */
    var number: Int {
        switch self {
        case .USEast1, .USWest1, .EUWest1, .EUCentral1, .EUNorth1, .APNortheast1, .APSoutheast1, .SAEast1, .CNNorth1, .USGovWest1: return 1 // Updated to include eu-north-1
        case .USWest2, .APNortheast2, .APSoutheast2: return 2
        default: return 0
        }
    }
}