// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS WAFV2 service.

 This is the latest version of the AWS WAF API, released in November, 2019. The names of the entities that you use to access this API, like endpoints and namespaces, all have the versioning information added, like "V2" or "v2", to distinguish from the prior version. We recommend migrating your resources to this version, because it has a number of significant improvements. If you used AWS WAF prior to this release, you can't use this AWS WAFV2 API to access any AWS WAF resources that you created before. You can access your old rules, web ACLs, and other AWS WAF resources only through the AWS WAF Classic APIs. The AWS WAF Classic APIs have retained the prior names, endpoints, and namespaces.  For information, including how to migrate your AWS WAF resources to this version, see the AWS WAF Developer Guide.   AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. AWS WAF also lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, API Gateway, CloudFront, or the Application Load Balancer responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You also can configure CloudFront to return a custom error page when a request is blocked. This API guide is for developers who need detailed information about AWS WAF API actions, data types, and errors. For detailed information about AWS WAF features and an overview of how to use AWS WAF, see the AWS WAF Developer Guide. You can make API calls using the endpoints listed in AWS Service Endpoints for AWS WAF.    For regional applications, you can use any of the endpoints in the list. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.    For AWS CloudFront applications, you must use the API endpoint listed for US East (N. Virginia): us-east-1.   Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see AWS SDKs. We currently provide two versions of the AWS WAF API: this API and the prior versions, the classic AWS WAF APIs. This new API provides the same functionality as the older versions, with the following major improvements:   You use one API for both global and regional applications. Where you need to distinguish the scope, you specify a Scope parameter and set it to CLOUDFRONT or REGIONAL.    You can define a Web ACL or rule group with a single API call, and update it with a single call. You define all rule specifications in JSON format, and pass them to your rule group or Web ACL API calls.   The limits AWS WAF places on the use of rules more closely reflects the cost of running each type of rule. Rule groups include capacity settings, so you know the maximum cost of a rule group when you use it.  
*/
public struct WAFV2 {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the WAFV2 client
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
        httpClientProvider: AWSClient.HTTPClientProvider = .useAWSClientShared
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSWAF_20190729",
            service: "wafv2",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-07-29",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [WAFV2ErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Associates a Web ACL with a regional application resource, to protect the resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  For AWS CloudFront, you can associate the Web ACL by providing the Id of the WebACL to the CloudFront API call UpdateDistribution. For information, see UpdateDistribution.
    public func associateWebACL(_ input: AssociateWebACLRequest) -> EventLoopFuture<AssociateWebACLResponse> {
        return client.send(operation: "AssociateWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules. You can use this to check the capacity requirements for the rules you want to use in a RuleGroup or WebACL.  AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. 
    public func checkCapacity(_ input: CheckCapacityRequest) -> EventLoopFuture<CheckCapacityResponse> {
        return client.send(operation: "CheckCapacity", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates an IPSet, which you use to identify web requests that originate from specific IP addresses or ranges of IP addresses. For example, if you're receiving a lot of requests from a ranges of IP addresses, you can configure AWS WAF to block them using an IPSet that lists those IP addresses. 
    public func createIPSet(_ input: CreateIPSetRequest) -> EventLoopFuture<CreateIPSetResponse> {
        return client.send(operation: "CreateIPSet", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a RegexPatternSet per the specifications provided.
    public func createRegexPatternSet(_ input: CreateRegexPatternSetRequest) -> EventLoopFuture<CreateRegexPatternSetResponse> {
        return client.send(operation: "CreateRegexPatternSet", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a RuleGroup per the specifications provided.   A rule group defines a collection of rules to inspect and control web requests that you can use in a WebACL. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. 
    public func createRuleGroup(_ input: CreateRuleGroupRequest) -> EventLoopFuture<CreateRuleGroupResponse> {
        return client.send(operation: "CreateRuleGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a WebACL per the specifications provided.  A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types Rule, RuleGroup, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. 
    public func createWebACL(_ input: CreateWebACLRequest) -> EventLoopFuture<CreateWebACLResponse> {
        return client.send(operation: "CreateWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified IPSet. 
    public func deleteIPSet(_ input: DeleteIPSetRequest) -> EventLoopFuture<DeleteIPSetResponse> {
        return client.send(operation: "DeleteIPSet", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the LoggingConfiguration from the specified web ACL.
    public func deleteLoggingConfiguration(_ input: DeleteLoggingConfigurationRequest) -> EventLoopFuture<DeleteLoggingConfigurationResponse> {
        return client.send(operation: "DeleteLoggingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified RegexPatternSet.
    public func deleteRegexPatternSet(_ input: DeleteRegexPatternSetRequest) -> EventLoopFuture<DeleteRegexPatternSetResponse> {
        return client.send(operation: "DeleteRegexPatternSet", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified RuleGroup.
    public func deleteRuleGroup(_ input: DeleteRuleGroupRequest) -> EventLoopFuture<DeleteRuleGroupResponse> {
        return client.send(operation: "DeleteRuleGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified WebACL.
    public func deleteWebACL(_ input: DeleteWebACLRequest) -> EventLoopFuture<DeleteWebACLResponse> {
        return client.send(operation: "DeleteWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Provides high-level information for a managed rule group, including descriptions of the rules. 
    public func describeManagedRuleGroup(_ input: DescribeManagedRuleGroupRequest) -> EventLoopFuture<DescribeManagedRuleGroupResponse> {
        return client.send(operation: "DescribeManagedRuleGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Disassociates a Web ACL from a regional application resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  For AWS CloudFront, you can disassociate the Web ACL by providing an empty WebACLId in the CloudFront API call UpdateDistribution. For information, see UpdateDistribution.
    public func disassociateWebACL(_ input: DisassociateWebACLRequest) -> EventLoopFuture<DisassociateWebACLResponse> {
        return client.send(operation: "DisassociateWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified IPSet.
    public func getIPSet(_ input: GetIPSetRequest) -> EventLoopFuture<GetIPSetResponse> {
        return client.send(operation: "GetIPSet", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Returns the LoggingConfiguration for the specified web ACL.
    public func getLoggingConfiguration(_ input: GetLoggingConfigurationRequest) -> EventLoopFuture<GetLoggingConfigurationResponse> {
        return client.send(operation: "GetLoggingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the keys that are currently blocked by a rate-based rule. The maximum number of managed keys that can be blocked for a single rate-based rule is 10,000. If more than 10,000 addresses exceed the rate limit, those with the highest rates are blocked.
    public func getRateBasedStatementManagedKeys(_ input: GetRateBasedStatementManagedKeysRequest) -> EventLoopFuture<GetRateBasedStatementManagedKeysResponse> {
        return client.send(operation: "GetRateBasedStatementManagedKeys", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified RegexPatternSet.
    public func getRegexPatternSet(_ input: GetRegexPatternSetRequest) -> EventLoopFuture<GetRegexPatternSetResponse> {
        return client.send(operation: "GetRegexPatternSet", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified RuleGroup.
    public func getRuleGroup(_ input: GetRuleGroupRequest) -> EventLoopFuture<GetRuleGroupResponse> {
        return client.send(operation: "GetRuleGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.  GetSampledRequests returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, GetSampledRequests returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.
    public func getSampledRequests(_ input: GetSampledRequestsRequest) -> EventLoopFuture<GetSampledRequestsResponse> {
        return client.send(operation: "GetSampledRequests", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified WebACL.
    public func getWebACL(_ input: GetWebACLRequest) -> EventLoopFuture<GetWebACLResponse> {
        return client.send(operation: "GetWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the WebACL for the specified resource. 
    public func getWebACLForResource(_ input: GetWebACLForResourceRequest) -> EventLoopFuture<GetWebACLForResourceResponse> {
        return client.send(operation: "GetWebACLForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of managed rule groups that are available for you to use. This list includes all AWS managed rule groups and the AWS Marketplace managed rule groups that you're subscribed to.
    public func listAvailableManagedRuleGroups(_ input: ListAvailableManagedRuleGroupsRequest) -> EventLoopFuture<ListAvailableManagedRuleGroupsResponse> {
        return client.send(operation: "ListAvailableManagedRuleGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of IPSetSummary objects for the IP sets that you manage.
    public func listIPSets(_ input: ListIPSetsRequest) -> EventLoopFuture<ListIPSetsResponse> {
        return client.send(operation: "ListIPSets", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of your LoggingConfiguration objects.
    public func listLoggingConfigurations(_ input: ListLoggingConfigurationsRequest) -> EventLoopFuture<ListLoggingConfigurationsResponse> {
        return client.send(operation: "ListLoggingConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of RegexPatternSetSummary objects for the regex pattern sets that you manage.
    public func listRegexPatternSets(_ input: ListRegexPatternSetsRequest) -> EventLoopFuture<ListRegexPatternSetsResponse> {
        return client.send(operation: "ListRegexPatternSets", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of the Amazon Resource Names (ARNs) for the regional resources that are associated with the specified web ACL. If you want the list of AWS CloudFront resources, use the AWS CloudFront call ListDistributionsByWebACLId. 
    public func listResourcesForWebACL(_ input: ListResourcesForWebACLRequest) -> EventLoopFuture<ListResourcesForWebACLResponse> {
        return client.send(operation: "ListResourcesForWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of RuleGroupSummary objects for the rule groups that you manage. 
    public func listRuleGroups(_ input: ListRuleGroupsRequest) -> EventLoopFuture<ListRuleGroupsResponse> {
        return client.send(operation: "ListRuleGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the TagInfoForResource for the specified resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of WebACLSummary objects for the web ACLs that you manage.
    public func listWebACLs(_ input: ListWebACLsRequest) -> EventLoopFuture<ListWebACLsResponse> {
        return client.send(operation: "ListWebACLs", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Enables the specified LoggingConfiguration, to start logging from a web ACL, according to the configuration provided. You can access information about all traffic that AWS WAF inspects using the following steps:   Create an Amazon Kinesis Data Firehose.  Create the data firehose with a PUT source and in the region that you are operating. If you are capturing logs for Amazon CloudFront, always create the firehose in US East (N. Virginia).   Do not create the data firehose using a Kinesis stream as your source.    Associate that firehose to your web ACL using a PutLoggingConfiguration request.   When you successfully enable logging using a PutLoggingConfiguration request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose. For more information, see Logging Web ACL Traffic Information in the AWS WAF Developer Guide.
    public func putLoggingConfiguration(_ input: PutLoggingConfigurationRequest) -> EventLoopFuture<PutLoggingConfigurationResponse> {
        return client.send(operation: "PutLoggingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Associates tags with the specified AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Disassociates tags from an AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified IPSet.
    public func updateIPSet(_ input: UpdateIPSetRequest) -> EventLoopFuture<UpdateIPSetResponse> {
        return client.send(operation: "UpdateIPSet", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified RegexPatternSet.
    public func updateRegexPatternSet(_ input: UpdateRegexPatternSetRequest) -> EventLoopFuture<UpdateRegexPatternSetResponse> {
        return client.send(operation: "UpdateRegexPatternSet", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified RuleGroup.  A rule group defines a collection of rules to inspect and control web requests that you can use in a WebACL. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. 
    public func updateRuleGroup(_ input: UpdateRuleGroupRequest) -> EventLoopFuture<UpdateRuleGroupResponse> {
        return client.send(operation: "UpdateRuleGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified WebACL.  A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types Rule, RuleGroup, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. 
    public func updateWebACL(_ input: UpdateWebACLRequest) -> EventLoopFuture<UpdateWebACLResponse> {
        return client.send(operation: "UpdateWebACL", path: "/", httpMethod: "POST", input: input)
    }
}
