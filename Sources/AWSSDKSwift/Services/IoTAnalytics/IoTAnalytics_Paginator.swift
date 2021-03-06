// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension IoTAnalytics {

    ///  Retrieves a list of channels.
    public func listChannelsPaginator(_ input: ListChannelsRequest, onPage: @escaping (ListChannelsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listChannels, tokenKey: \ListChannelsResponse.nextToken, onPage: onPage)
    }

    ///  Lists information about data set contents that have been created.
    public func listDatasetContentsPaginator(_ input: ListDatasetContentsRequest, onPage: @escaping (ListDatasetContentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasetContents, tokenKey: \ListDatasetContentsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves information about data sets.
    public func listDatasetsPaginator(_ input: ListDatasetsRequest, onPage: @escaping (ListDatasetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasets, tokenKey: \ListDatasetsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of data stores.
    public func listDatastoresPaginator(_ input: ListDatastoresRequest, onPage: @escaping (ListDatastoresResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatastores, tokenKey: \ListDatastoresResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of pipelines.
    public func listPipelinesPaginator(_ input: ListPipelinesRequest, onPage: @escaping (ListPipelinesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPipelines, tokenKey: \ListPipelinesResponse.nextToken, onPage: onPage)
    }

}

extension IoTAnalytics.ListChannelsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListChannelsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTAnalytics.ListDatasetContentsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListDatasetContentsRequest {
        return .init(
            datasetName: self.datasetName, 
            maxResults: self.maxResults, 
            nextToken: token, 
            scheduledBefore: self.scheduledBefore, 
            scheduledOnOrAfter: self.scheduledOnOrAfter
        )

    }
}

extension IoTAnalytics.ListDatasetsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListDatasetsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTAnalytics.ListDatastoresRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListDatastoresRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTAnalytics.ListPipelinesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListPipelinesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


