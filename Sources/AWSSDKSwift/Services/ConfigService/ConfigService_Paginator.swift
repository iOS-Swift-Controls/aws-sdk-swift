// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ConfigService {

    ///  Returns the details of one or more remediation exceptions. A detailed view of a remediation exception for a set of resources that includes an explanation of an exception and the time when the exception will be deleted. When you specify the limit and the next token, you receive a paginated response.   When you specify the limit and the next token, you receive a paginated response.  Limit and next token are not applicable if you request resources in batch. It is only applicable, when you request all resources. 
    public func describeRemediationExceptionsPaginator(_ input: DescribeRemediationExceptionsRequest, onPage: @escaping (DescribeRemediationExceptionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeRemediationExceptions, tokenKey: \DescribeRemediationExceptionsResponse.nextToken, onPage: onPage)
    }

    ///  Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.
    public func describeRemediationExecutionStatusPaginator(_ input: DescribeRemediationExecutionStatusRequest, onPage: @escaping (DescribeRemediationExecutionStatusResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeRemediationExecutionStatus, tokenKey: \DescribeRemediationExecutionStatusResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your ConfigurationItems between a minimum of 30 days and a maximum of 7 years (2557 days), AWS Config returns the ConfigurationItems for the specified retention period.  The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the limit parameter. The response includes a nextToken string. To get the next page of results, run the request again and specify the string for the nextToken parameter.  Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified limit. In such cases, you can make another call, using the nextToken. 
    public func getResourceConfigHistoryPaginator(_ input: GetResourceConfigHistoryRequest, onPage: @escaping (GetResourceConfigHistoryResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourceConfigHistory, tokenKey: \GetResourceConfigHistoryResponse.nextToken, onPage: onPage)
    }

}

extension ConfigService.DescribeRemediationExceptionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ConfigService.DescribeRemediationExceptionsRequest {
        return .init(
            configRuleName: self.configRuleName, 
            limit: self.limit, 
            nextToken: token, 
            resourceKeys: self.resourceKeys
        )

    }
}

extension ConfigService.DescribeRemediationExecutionStatusRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ConfigService.DescribeRemediationExecutionStatusRequest {
        return .init(
            configRuleName: self.configRuleName, 
            limit: self.limit, 
            nextToken: token, 
            resourceKeys: self.resourceKeys
        )

    }
}

extension ConfigService.GetResourceConfigHistoryRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ConfigService.GetResourceConfigHistoryRequest {
        return .init(
            chronologicalOrder: self.chronologicalOrder, 
            earlierTime: self.earlierTime, 
            laterTime: self.laterTime, 
            limit: self.limit, 
            nextToken: token, 
            resourceId: self.resourceId, 
            resourceType: self.resourceType
        )

    }
}


