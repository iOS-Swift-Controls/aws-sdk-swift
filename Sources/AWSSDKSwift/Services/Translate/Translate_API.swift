// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS Translate service.

Provides translation between one source language and another of the same set of languages.
*/
public struct Translate {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Translate client
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
            amzTarget: "AWSShineFrontendService_20170701",
            service: "translate",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-07-01",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "translate-fips.us-east-1.amazonaws.com", "us-east-2-fips": "translate-fips.us-east-2.amazonaws.com", "us-west-2-fips": "translate-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [TranslateErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  A synchronous action that deletes a custom terminology.
    @discardableResult public func deleteTerminology(_ input: DeleteTerminologyRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteTerminology", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with an asycnhronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on.
    public func describeTextTranslationJob(_ input: DescribeTextTranslationJobRequest) -> EventLoopFuture<DescribeTextTranslationJobResponse> {
        return client.send(operation: "DescribeTextTranslationJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a custom terminology.
    public func getTerminology(_ input: GetTerminologyRequest) -> EventLoopFuture<GetTerminologyResponse> {
        return client.send(operation: "GetTerminology", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name. Importing a terminology with the same name as an existing one will merge the terminologies based on the chosen merge strategy. Currently, the only supported merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing terminology of the same name. If you import a terminology that overwrites an existing one, the new terminology take up to 10 minutes to fully propagate and be available for use in a translation due to cache policies with the DataPlane service that performs the translations.
    public func importTerminology(_ input: ImportTerminologyRequest) -> EventLoopFuture<ImportTerminologyResponse> {
        return client.send(operation: "ImportTerminology", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides a list of custom terminologies associated with your account.
    public func listTerminologies(_ input: ListTerminologiesRequest) -> EventLoopFuture<ListTerminologiesResponse> {
        return client.send(operation: "ListTerminologies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the batch translation jobs that you have submitted.
    public func listTextTranslationJobs(_ input: ListTextTranslationJobsRequest) -> EventLoopFuture<ListTextTranslationJobsResponse> {
        return client.send(operation: "ListTextTranslationJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous batch translation job. Batch translation jobs can be used to translate large volumes of text across multiple documents at once. For more information, see async. Batch translation jobs can be described with the DescribeTextTranslationJob operation, listed with the ListTextTranslationJobs operation, and stopped with the StopTextTranslationJob operation.  Amazon Translate does not support batch translation of multiple source languages at once. 
    public func startTextTranslationJob(_ input: StartTextTranslationJobRequest) -> EventLoopFuture<StartTextTranslationJobResponse> {
        return client.send(operation: "StartTextTranslationJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops an asynchronous batch translation job that is in progress. If the job's state is IN_PROGRESS, the job will be marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state. Otherwise, the job is put into the STOPPED state. Asynchronous batch translation jobs are started with the StartTextTranslationJob operation. You can use the DescribeTextTranslationJob or ListTextTranslationJobs operations to get a batch translation job's JobId.
    public func stopTextTranslationJob(_ input: StopTextTranslationJobRequest) -> EventLoopFuture<StopTextTranslationJobResponse> {
        return client.send(operation: "StopTextTranslationJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Translates input text from the source language to the target language. For a list of available languages and language codes, see what-is-languages.
    public func translateText(_ input: TranslateTextRequest) -> EventLoopFuture<TranslateTextResponse> {
        return client.send(operation: "TranslateText", path: "/", httpMethod: "POST", input: input)
    }
}
