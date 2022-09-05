import Mixpanel

public struct scgateway_mixpanel_spm {
    public private(set) var text = "Hello, World!"

    public init() {
        
    }
    
    public static func test() {
        Mixpanel.initialize(token: "952676d310d87d9665e5d79f88cc8814")
    }
}
