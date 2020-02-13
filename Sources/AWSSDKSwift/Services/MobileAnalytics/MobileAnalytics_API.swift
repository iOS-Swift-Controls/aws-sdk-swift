// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS MobileAnalytics service.

Amazon Mobile Analytics is a service for collecting, visualizing, and understanding app usage data at scale.
*/
public struct MobileAnalytics {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MobileAnalytics client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `useAWSClientShared` if the client shall manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "mobileanalytics",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2014-06-05",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MobileAnalyticsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.
    @discardableResult public func putEvents(_ input: PutEventsInput) -> EventLoopFuture<Void> {
        return client.send(operation: "PutEvents", path: "/2014-06-05/events", httpMethod: "POST", input: input)
    }
}
