// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS CloudWatch service.

Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and the applications you run on AWS in real time. You can use CloudWatch to collect and track metrics, which are the variables you want to measure for your resources and applications. CloudWatch alarms send notifications or automatically change the resources you are monitoring based on rules that you define. For example, you can monitor the CPU usage and disk reads and writes of your Amazon EC2 instances. Then, use this data to determine whether you should launch additional instances to handle increased load. You can also use this data to stop under-used instances to save money. In addition to monitoring the built-in metrics that come with AWS, you can monitor your own custom metrics. With CloudWatch, you gain system-wide visibility into resource utilization, application performance, and operational health.
*/
public struct CloudWatch {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CloudWatch client
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
            service: "monitoring",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2010-08-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CloudWatchErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes the specified alarms. You can delete up to 50 alarms in one operation. In the event of an error, no alarms are deleted.
    @discardableResult public func deleteAlarms(_ input: DeleteAlarmsInput) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAlarms", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified anomaly detection model from your account.
    public func deleteAnomalyDetector(_ input: DeleteAnomalyDetectorInput) -> EventLoopFuture<DeleteAnomalyDetectorOutput> {
        return client.send(operation: "DeleteAnomalyDetector", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes all dashboards that you specify. You may specify up to 100 dashboards to delete. If there is an error during this call, no dashboards are deleted.
    public func deleteDashboards(_ input: DeleteDashboardsInput) -> EventLoopFuture<DeleteDashboardsOutput> {
        return client.send(operation: "DeleteDashboards", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes the specified Contributor Insights rules. If you create a rule, delete it, and then re-create it with the same name, historical data from the first time the rule was created may or may not be available.
    public func deleteInsightRules(_ input: DeleteInsightRulesInput) -> EventLoopFuture<DeleteInsightRulesOutput> {
        return client.send(operation: "DeleteInsightRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for all alarms are returned. CloudWatch retains the history of an alarm even if you delete the alarm.
    public func describeAlarmHistory(_ input: DescribeAlarmHistoryInput) -> EventLoopFuture<DescribeAlarmHistoryOutput> {
        return client.send(operation: "DescribeAlarmHistory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the specified alarms. If no alarms are specified, all alarms are returned. Alarms can be retrieved by using only a prefix for the alarm name, the alarm state, or a prefix for any action.
    public func describeAlarms(_ input: DescribeAlarmsInput) -> EventLoopFuture<DescribeAlarmsOutput> {
        return client.send(operation: "DescribeAlarms", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the alarms for the specified metric. To filter the results, specify a statistic, period, or unit.
    public func describeAlarmsForMetric(_ input: DescribeAlarmsForMetricInput) -> EventLoopFuture<DescribeAlarmsForMetricOutput> {
        return client.send(operation: "DescribeAlarmsForMetric", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the anomaly detection models that you have created in your account. You can list all models in your account or filter the results to only the models that are related to a certain namespace, metric name, or metric dimension.
    public func describeAnomalyDetectors(_ input: DescribeAnomalyDetectorsInput) -> EventLoopFuture<DescribeAnomalyDetectorsOutput> {
        return client.send(operation: "DescribeAnomalyDetectors", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all the Contributor Insights rules in your account. All rules in your account are returned with a single operation. For more information about Contributor Insights, see Using Contributor Insights to Analyze High-Cardinality Data.
    public func describeInsightRules(_ input: DescribeInsightRulesInput) -> EventLoopFuture<DescribeInsightRulesOutput> {
        return client.send(operation: "DescribeInsightRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables the actions for the specified alarms. When an alarm's actions are disabled, the alarm actions do not execute when the alarm state changes.
    @discardableResult public func disableAlarmActions(_ input: DisableAlarmActionsInput) -> EventLoopFuture<Void> {
        return client.send(operation: "DisableAlarmActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables the specified Contributor Insights rules. When rules are disabled, they do not analyze log groups and do not incur costs.
    public func disableInsightRules(_ input: DisableInsightRulesInput) -> EventLoopFuture<DisableInsightRulesOutput> {
        return client.send(operation: "DisableInsightRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables the actions for the specified alarms.
    @discardableResult public func enableAlarmActions(_ input: EnableAlarmActionsInput) -> EventLoopFuture<Void> {
        return client.send(operation: "EnableAlarmActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables the specified Contributor Insights rules. When rules are enabled, they immediately begin analyzing log data.
    public func enableInsightRules(_ input: EnableInsightRulesInput) -> EventLoopFuture<EnableInsightRulesOutput> {
        return client.send(operation: "EnableInsightRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays the details of the dashboard that you specify. To copy an existing dashboard, use GetDashboard, and then use the data returned within DashboardBody as the template for the new dashboard when you call PutDashboard to create the copy.
    public func getDashboard(_ input: GetDashboardInput) -> EventLoopFuture<GetDashboardOutput> {
        return client.send(operation: "GetDashboard", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation returns the time series data collected by a Contributor Insights rule. The data includes the identity and number of contributors to the log group. You can also optionally return one or more statistics about each data point in the time series. These statistics can include the following:    UniqueContributors -- the number of unique contributors for each data point.    MaxContributorValue -- the value of the top contributor for each data point. The identity of the contributor may change for each data point in the graph. If this rule aggregates by COUNT, the top contributor for each data point is the contributor with the most occurrences in that period. If the rule aggregates by SUM, the top contributor is the contributor with the highest sum in the log field specified by the rule's Value, during that period.    SampleCount -- the number of data points matched by the rule.    Sum -- the sum of the values from all contributors during the time period represented by that data point.    Minimum -- the minimum value from a single observation during the time period represented by that data point.    Maximum -- the maximum value from a single observation during the time period represented by that data point.    Average -- the average value from all contributors during the time period represented by that data point.  
    public func getInsightRuleReport(_ input: GetInsightRuleReportInput) -> EventLoopFuture<GetInsightRuleReportOutput> {
        return client.send(operation: "GetInsightRuleReport", path: "/", httpMethod: "POST", input: input)
    }

    ///  You can use the GetMetricData API to retrieve as many as 100 different metrics in a single request, with a total of as many as 100,800 data points. You can also optionally perform math expressions on the values of the returned statistics, to create new time series that represent new insights into your data. For example, using Lambda metrics, you could divide the Errors metric by the Invocations metric to get an error rate time series. For more information about metric math expressions, see Metric Math Syntax and Functions in the Amazon CloudWatch User Guide. Calls to the GetMetricData API have a different pricing structure than calls to GetMetricStatistics. For more information about pricing, see Amazon CloudWatch Pricing. Amazon CloudWatch retains metric data as follows:   Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a StorageResolution of 1.   Data points with a period of 60 seconds (1-minute) are available for 15 days.   Data points with a period of 300 seconds (5-minute) are available for 63 days.   Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).   Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour. If you omit Unit in your request, all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.
    public func getMetricData(_ input: GetMetricDataInput) -> EventLoopFuture<GetMetricDataOutput> {
        return client.send(operation: "GetMetricData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets statistics for the specified metric. The maximum number of data points returned from a single call is 1,440. If you request more than 1,440 data points, CloudWatch returns an error. To reduce the number of data points, you can narrow the specified time range and make multiple requests across adjacent time ranges, or you can increase the specified period. Data points are not returned in chronological order. CloudWatch aggregates data points based on the length of the period that you specify. For example, if you request statistics with a one-hour period, CloudWatch aggregates all data points with time stamps that fall within each one-hour period. Therefore, the number of values aggregated by CloudWatch is larger than the number of data points returned. CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:   The SampleCount value of the statistic set is 1.   The Min and the Max values of the statistic set are equal.   Percentile statistics are not available for metrics when any of the metric values are negative numbers. Amazon CloudWatch retains metric data as follows:   Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a StorageResolution of 1.   Data points with a period of 60 seconds (1-minute) are available for 15 days.   Data points with a period of 300 seconds (5-minute) are available for 63 days.   Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).   Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour. CloudWatch started retaining 5-minute and 1-hour metric data as of July 9, 2016. For information about metrics and dimensions supported by AWS services, see the Amazon CloudWatch Metrics and Dimensions Reference in the Amazon CloudWatch User Guide.
    public func getMetricStatistics(_ input: GetMetricStatisticsInput) -> EventLoopFuture<GetMetricStatisticsOutput> {
        return client.send(operation: "GetMetricStatistics", path: "/", httpMethod: "POST", input: input)
    }

    ///  You can use the GetMetricWidgetImage API to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image. You can then embed this image into your services and products, such as wiki pages, reports, and documents. You could also retrieve images regularly, such as every minute, and create your own custom live dashboard. The graph you retrieve can include all CloudWatch metric graph features, including metric math and horizontal and vertical annotations. There is a limit of 20 transactions per second for this API. Each GetMetricWidgetImage action has the following limits:   As many as 100 metrics in the graph.   Up to 100 KB uncompressed payload.  
    public func getMetricWidgetImage(_ input: GetMetricWidgetImageInput) -> EventLoopFuture<GetMetricWidgetImageOutput> {
        return client.send(operation: "GetMetricWidgetImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the dashboards for your account. If you include DashboardNamePrefix, only those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are listed.   ListDashboards returns up to 1000 results on one page. If there are more than 1000 dashboards, you can call ListDashboards again and include the value you received for NextToken in the first call, to receive the next 1000 results.
    public func listDashboards(_ input: ListDashboardsInput) -> EventLoopFuture<ListDashboardsOutput> {
        return client.send(operation: "ListDashboards", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the specified metrics. You can use the returned metrics with GetMetricData or GetMetricStatistics to obtain statistical data. Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls. After you create a metric, allow up to fifteen minutes before the metric appears. Statistics about the metric, however, are available sooner using GetMetricData or GetMetricStatistics.
    public func listMetrics(_ input: ListMetricsInput) -> EventLoopFuture<ListMetricsOutput> {
        return client.send(operation: "ListMetrics", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays the tags associated with a CloudWatch resource. Alarms support tagging.
    public func listTagsForResource(_ input: ListTagsForResourceInput) -> EventLoopFuture<ListTagsForResourceOutput> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an anomaly detection model for a CloudWatch metric. You can use the model to display a band of expected normal values when the metric is graphed. For more information, see CloudWatch Anomaly Detection.
    public func putAnomalyDetector(_ input: PutAnomalyDetectorInput) -> EventLoopFuture<PutAnomalyDetectorOutput> {
        return client.send(operation: "PutAnomalyDetector", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a dashboard if it does not already exist, or updates an existing dashboard. If you update a dashboard, the entire contents are replaced with what you specify here. All dashboards in your account are global, not region-specific. A simple way to create a dashboard using PutDashboard is to copy an existing dashboard. To copy an existing dashboard using the console, you can load the dashboard and then use the View/edit source command in the Actions menu to display the JSON block for that dashboard. Another way to copy a dashboard is to use GetDashboard, and then use the data returned within DashboardBody as the template for the new dashboard when you call PutDashboard. When you create a dashboard with PutDashboard, a good practice is to add a text widget at the top of the dashboard with a message that the dashboard was created by script and should not be changed in the console. This message could also point console users to the location of the DashboardBody script or the CloudFormation template used to create the dashboard.
    public func putDashboard(_ input: PutDashboardInput) -> EventLoopFuture<PutDashboardOutput> {
        return client.send(operation: "PutDashboard", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Contributor Insights rule. Rules evaluate log events in a CloudWatch Logs log group, enabling you to find contributor data for the log events in that log group. For more information, see Using Contributor Insights to Analyze High-Cardinality Data. If you create a rule, delete it, and then re-create it with the same name, historical data from the first time the rule was created may or may not be available.
    public func putInsightRule(_ input: PutInsightRuleInput) -> EventLoopFuture<PutInsightRuleOutput> {
        return client.send(operation: "PutInsightRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates an alarm and associates it with the specified metric, metric math expression, or anomaly detection model. Alarms based on anomaly detection models cannot have Auto Scaling actions. When this operation creates an alarm, the alarm state is immediately set to INSUFFICIENT_DATA. The alarm is then evaluated and its state is set appropriately. Any actions associated with the new state are then executed. When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm. If you are an IAM user, you must have Amazon EC2 permissions for some alarm operations:    iam:CreateServiceLinkedRole for all alarms with EC2 actions    ec2:DescribeInstanceStatus and ec2:DescribeInstances for all alarms on EC2 instance status metrics    ec2:StopInstances for alarms with stop actions    ec2:TerminateInstances for alarms with terminate actions   No specific permissions are needed for alarms with recover actions   If you have read/write permissions for Amazon CloudWatch but not for Amazon EC2, you can still create an alarm, but the stop or terminate actions are not performed. However, if you are later granted the required permissions, the alarm actions that you created earlier are performed. If you are using an IAM role (for example, an EC2 instance profile), you cannot stop or terminate the instance using alarm actions. However, you can still see the alarm state and perform any other actions such as Amazon SNS notifications or Auto Scaling policies. If you are using temporary security credentials granted using AWS STS, you cannot stop or terminate an EC2 instance using alarm actions. The first time you create an alarm in the AWS Management Console, the CLI, or by using the PutMetricAlarm API, CloudWatch creates the necessary service-linked role for you. The service-linked role is called AWSServiceRoleForCloudWatchEvents. For more information, see AWS service-linked role.
    @discardableResult public func putMetricAlarm(_ input: PutMetricAlarmInput) -> EventLoopFuture<Void> {
        return client.send(operation: "PutMetricAlarm", path: "/", httpMethod: "POST", input: input)
    }

    ///  Publishes metric data points to Amazon CloudWatch. CloudWatch associates the data points with the specified metric. If the specified metric does not exist, CloudWatch creates the metric. When CloudWatch creates a metric, it can take up to fifteen minutes for the metric to appear in calls to ListMetrics. You can publish either individual data points in the Value field, or arrays of values and the number of times each value occurred during the period by using the Values and Counts fields in the MetricDatum structure. Using the Values and Counts method enables you to publish up to 150 values per metric with one PutMetricData request, and supports retrieving percentile statistics on this data. Each PutMetricData request is limited to 40 KB in size for HTTP POST requests. You can send a payload compressed by gzip. Each request is also limited to no more than 20 different metrics. Although the Value parameter accepts numbers of type Double, CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported. You can use up to 10 dimensions per metric to further clarify what data the metric collects. Each dimension consists of a Name and Value pair. For more information about specifying dimensions, see Publishing Metrics in the Amazon CloudWatch User Guide. Data points with time stamps from 24 hours ago or longer can take at least 48 hours to become available for GetMetricData or GetMetricStatistics from the time they are submitted. CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:   The SampleCount value of the statistic set is 1 and Min, Max, and Sum are all equal.   The Min and Max are equal, and Sum is equal to Min multiplied by SampleCount.  
    @discardableResult public func putMetricData(_ input: PutMetricDataInput) -> EventLoopFuture<Void> {
        return client.send(operation: "PutMetricData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Temporarily sets the state of an alarm for testing purposes. When the updated state differs from the previous value, the action configured for the appropriate state is invoked. For example, if your alarm is configured to send an Amazon SNS message when an alarm is triggered, temporarily changing the alarm state to ALARM sends an SNS message. The alarm returns to its actual state (often within seconds). Because the alarm state change happens quickly, it is typically only visible in the alarm's History tab in the Amazon CloudWatch console or through DescribeAlarmHistory.
    @discardableResult public func setAlarmState(_ input: SetAlarmStateInput) -> EventLoopFuture<Void> {
        return client.send(operation: "SetAlarmState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Assigns one or more tags (key-value pairs) to the specified CloudWatch resource. Currently, the only CloudWatch resources that can be tagged are alarms. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with an alarm that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.
    public func tagResource(_ input: TagResourceInput) -> EventLoopFuture<TagResourceOutput> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from the specified resource.
    public func untagResource(_ input: UntagResourceInput) -> EventLoopFuture<UntagResourceOutput> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }
}
