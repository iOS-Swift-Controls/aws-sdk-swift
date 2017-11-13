// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
You can use Amazon CloudWatch Logs to monitor, store, and access your log files from EC2 instances, Amazon CloudTrail, or other sources. You can then retrieve the associated log data from CloudWatch Logs using the Amazon CloudWatch console, the CloudWatch Logs commands in the AWS CLI, the CloudWatch Logs API, or the CloudWatch Logs SDK. You can use CloudWatch Logs to:    Monitor Logs from Amazon EC2 Instances in Real-time: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold you specify. CloudWatch Logs uses your log data for monitoring; so, no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a Amazon CloudWatch metric that you specify.    Monitor Amazon CloudTrail Logged Events: You can create alarms in Amazon CloudWatch and receive notifications of particular API activity as captured by CloudTrail and use the notification to perform troubleshooting.    Archive Log Data: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.  
*/
public struct Logs {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Logs_20140328",
            service: "logs",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2014-03-28",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [LogsError.self]
        )
    }

    ///  Creates a log stream for the specified log group. There is no limit on the number of log streams that you can create for a log group. You must use the following guidelines when naming a log stream:   Log stream names must be unique within the log group.   Log stream names can be between 1 and 512 characters long.   The ':' (colon) and '*' (asterisk) characters are not allowed.  
    public func createLogStream(_ input: CreateLogStreamRequest) throws {
        _ = try client.send(operation: "CreateLogStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified subscription filter.
    public func deleteSubscriptionFilter(_ input: DeleteSubscriptionFilterRequest) throws {
        _ = try client.send(operation: "DeleteSubscriptionFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.
    public func describeLogGroups(_ input: DescribeLogGroupsRequest) throws -> DescribeLogGroupsResponse {
        return try client.send(operation: "DescribeLogGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. This operation has a limit of five transactions per second, after which transactions are throttled.
    public func describeLogStreams(_ input: DescribeLogStreamsRequest) throws -> DescribeLogStreamsResponse {
        return try client.send(operation: "DescribeLogStreams", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
    public func describeSubscriptionFilters(_ input: DescribeSubscriptionFiltersRequest) throws -> DescribeSubscriptionFiltersResponse {
        return try client.send(operation: "DescribeSubscriptionFilters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified retention policy. Log events do not expire if they belong to log groups without a retention policy.
    public func deleteRetentionPolicy(_ input: DeleteRetentionPolicyRequest) throws {
        _ = try client.send(operation: "DeleteRetentionPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists log events from the specified log stream. You can list all the log events or filter using a time range. By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). If the results include tokens, there are more log events available. You can get additional log events by specifying one of the tokens in a subsequent call.
    public func getLogEvents(_ input: GetLogEventsRequest) throws -> GetLogEventsResponse {
        return try client.send(operation: "GetLogEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a destination. A destination encapsulates a physical resource (such as a Kinesis stream) and enables you to subscribe to a real-time stream of log events of a different account, ingested using PutLogEvents. Currently, the only supported physical resource is a Amazon Kinesis stream belonging to the same account as the destination. A destination controls what is written to its Amazon Kinesis stream through an access policy. By default, PutDestination does not set any access policy with the destination, which means a cross-account user cannot call PutSubscriptionFilter against this destination. To enable this, the destination owner must call PutDestinationPolicy after PutDestination.
    public func putDestination(_ input: PutDestinationRequest) throws -> PutDestinationResponse {
        return try client.send(operation: "PutDestination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads a batch of log events to the specified log stream. You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using DescribeLogStreams. The batch of events must satisfy the following constraints:   The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.   None of the log events in the batch can be more than 2 hours in the future.   None of the log events in the batch can be older than 14 days or the retention period of the log group.   The log events in the batch must be in chronological ordered by their timestamp (the time the event occurred, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC).   The maximum number of log events in a batch is 10,000.   A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.  
    public func putLogEvents(_ input: PutLogEventsRequest) throws -> PutLogEventsResponse {
        return try client.send(operation: "PutLogEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags for the specified log group. To add tags, use TagLogGroup. To remove tags, use UntagLogGroup.
    public func listTagsLogGroup(_ input: ListTagsLogGroupRequest) throws -> ListTagsLogGroupResponse {
        return try client.send(operation: "ListTagsLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. By default, this operation returns as many log events as can fit in 1MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.
    public func filterLogEvents(_ input: FilterLogEventsRequest) throws -> FilterLogEventsResponse {
        return try client.send(operation: "FilterLogEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or updates the specified tags for the specified log group. To list the tags for a log group, use ListTagsLogGroup. To remove tags, use UntagLogGroup. For more information about tags, see Tag Log Groups in Amazon CloudWatch Logs in the Amazon CloudWatch Logs User Guide.
    public func tagLogGroup(_ input: TagLogGroupRequest) throws {
        _ = try client.send(operation: "TagLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a log group with the specified name. You can create up to 5000 log groups per account. You must use the following guidelines when naming a log group:   Log group names must be unique within a region for an AWS account.   Log group names can be between 1 and 512 characters long.   Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).  
    public func createLogGroup(_ input: CreateLogGroupRequest) throws {
        _ = try client.send(operation: "CreateLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels the specified export task. The task must be in the PENDING or RUNNING state.
    public func cancelExportTask(_ input: CancelExportTaskRequest) throws {
        _ = try client.send(operation: "CancelExportTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.
    public func describeExportTasks(_ input: DescribeExportTasksRequest) throws -> DescribeExportTasksResponse {
        return try client.send(operation: "DescribeExportTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the retention of the specified log group. A retention policy allows you to configure the number of days you want to retain log events in the specified log group.
    public func putRetentionPolicy(_ input: PutRetentionPolicyRequest) throws {
        _ = try client.send(operation: "PutRetentionPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through PutLogEvents. The maximum number of metric filters that can be associated with a log group is 100.
    public func putMetricFilter(_ input: PutMetricFilterRequest) throws {
        _ = try client.send(operation: "PutMetricFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket. This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use DescribeExportTasks to get the status of the export task. Each account can only have one active (RUNNING or PENDING) export task at a time. To cancel an export task, use CancelExportTask. You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix that will be used as the Amazon S3 key prefix for all exported objects.
    public func createExportTask(_ input: CreateExportTaskRequest) throws -> CreateExportTaskResponse {
        return try client.send(operation: "CreateExportTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.
    public func deleteDestination(_ input: DeleteDestinationRequest) throws {
        _ = try client.send(operation: "DeleteDestination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.
    public func testMetricFilter(_ input: TestMetricFilterRequest) throws -> TestMetricFilterResponse {
        return try client.send(operation: "TestMetricFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, and metric namespace. The results are ASCII-sorted by filter name.
    public func describeMetricFilters(_ input: DescribeMetricFiltersRequest) throws -> DescribeMetricFiltersResponse {
        return try client.send(operation: "DescribeMetricFilters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified log group. To list the tags for a log group, use ListTagsLogGroup. To add tags, use UntagLogGroup.
    public func untagLogGroup(_ input: UntagLogGroupRequest) throws {
        _ = try client.send(operation: "UntagLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates an access policy associated with an existing destination. An access policy is an IAM policy document that is used to authorize claims to register a subscription filter against a given destination.
    public func putDestinationPolicy(_ input: PutDestinationPolicyRequest) throws {
        _ = try client.send(operation: "PutDestinationPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified metric filter.
    public func deleteMetricFilter(_ input: DeleteMetricFilterRequest) throws {
        _ = try client.send(operation: "DeleteMetricFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through PutLogEvents and have them delivered to a specific destination. Currently, the supported destinations are:   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.   A logical destination that belongs to a different account, for cross-account delivery.   An Amazon Kinesis Firehose stream that belongs to the same account as the subscription filter, for same-account delivery.   An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.   There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in filterName. Otherwise, the call will fail because you cannot associate a second filter with a log group.
    public func putSubscriptionFilter(_ input: PutSubscriptionFilterRequest) throws {
        _ = try client.send(operation: "PutSubscriptionFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all your destinations. The results are ASCII-sorted by destination name.
    public func describeDestinations(_ input: DescribeDestinationsRequest) throws -> DescribeDestinationsResponse {
        return try client.send(operation: "DescribeDestinations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified log group and permanently deletes all the archived log events associated with the log group.
    public func deleteLogGroup(_ input: DeleteLogGroupRequest) throws {
        _ = try client.send(operation: "DeleteLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.
    public func deleteLogStream(_ input: DeleteLogStreamRequest) throws {
        _ = try client.send(operation: "DeleteLogStream", path: "/", httpMethod: "POST", input: input)
    }


}