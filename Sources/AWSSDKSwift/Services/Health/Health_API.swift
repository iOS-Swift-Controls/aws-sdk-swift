// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Health The AWS Health API provides programmatic access to the AWS Health information that is presented in the AWS Personal Health Dashboard. You can get information about events that affect your AWS resources:    DescribeEvents: Summary information about events.    DescribeEventDetails: Detailed information about one or more events.    DescribeAffectedEntities: Information about AWS resources that are affected by one or more events.   In addition, these operations provide information about event types and summary counts of events or affected entities:    DescribeEventTypes: Information about the kinds of events that AWS Health tracks.    DescribeEventAggregates: A count of the number of events that meet specified criteria.    DescribeEntityAggregates: A count of the number of affected entities that meet specified criteria.   The Health API requires a Business or Enterprise support plan from AWS Support. Calling the Health API from an account that does not have a Business or Enterprise support plan causes a SubscriptionRequiredException.  For authentication of requests, AWS Health uses the Signature Version 4 Signing Process. See the AWS Health User Guide for information about how to use the API.  Service Endpoint  The HTTP endpoint for the AWS Health API is:   https://health.us-east-1.amazonaws.com   
*/
public struct Health {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSHealth_20160804",
            service: "health",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-08-04",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [HealthErrorType.self]
        )
    }

    ///  Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this. At least one event ARN is required. Results are sorted by the lastUpdatedTime of the entity, starting with the most recent.
    public func describeAffectedEntities(_ input: DescribeAffectedEntitiesRequest) throws -> Future<DescribeAffectedEntitiesResponse> {
        return try client.send(operation: "DescribeAffectedEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.
    public func describeEntityAggregates(_ input: DescribeEntityAggregatesRequest) throws -> Future<DescribeEntityAggregatesResponse> {
        return try client.send(operation: "DescribeEntityAggregates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.
    public func describeEventAggregates(_ input: DescribeEventAggregatesRequest) throws -> Future<DescribeEventAggregatesResponse> {
        return try client.send(operation: "DescribeEventAggregates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns detailed information about one or more specified events. Information includes standard event data (region, service, etc., as returned by DescribeEvents), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the DescribeAffectedEntities operation. If a specified event cannot be retrieved, an error message is returned for that event.
    public func describeEventDetails(_ input: DescribeEventDetailsRequest) throws -> Future<DescribeEventDetailsResponse> {
        return try client.send(operation: "DescribeEventDetails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.
    public func describeEventTypes(_ input: DescribeEventTypesRequest) throws -> Future<DescribeEventTypesResponse> {
        return try client.send(operation: "DescribeEventTypes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no filter criteria are specified, all events are returned. Results are sorted by lastModifiedTime, starting with the most recent.
    public func describeEvents(_ input: DescribeEventsRequest) throws -> Future<DescribeEventsResponse> {
        return try client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }
}
