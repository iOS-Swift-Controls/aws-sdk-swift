// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3 service. Objects are the fundamental entities that are stored in AWS Elemental MediaStore.
*/
public struct MediaStoreData {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "data.mediastore",
            signingName: "mediastore",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2017-09-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaStoreDataErrorType.self]
        )
    }

    ///  Deletes an object at the specified path.
    public func deleteObject(_ input: DeleteObjectRequest) -> Future<DeleteObjectResponse> {
        return client.send(operation: "DeleteObject", path: "/{Path+}", httpMethod: "DELETE", input: input)
    }

    ///  Gets the headers for an object at the specified path.
    public func describeObject(_ input: DescribeObjectRequest) -> Future<DescribeObjectResponse> {
        return client.send(operation: "DescribeObject", path: "/{Path+}", httpMethod: "HEAD", input: input)
    }

    ///  Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    public func getObject(_ input: GetObjectRequest) -> Future<GetObjectResponse> {
        return client.send(operation: "GetObject", path: "/{Path+}", httpMethod: "GET", input: input)
    }

    ///  Provides a list of metadata entries about folders and objects in the specified folder.
    public func listItems(_ input: ListItemsRequest) -> Future<ListItemsResponse> {
        return client.send(operation: "ListItems", path: "/", httpMethod: "GET", input: input)
    }

    ///  Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
    public func putObject(_ input: PutObjectRequest) -> Future<PutObjectResponse> {
        return client.send(operation: "PutObject", path: "/{Path+}", httpMethod: "PUT", input: input)
    }
}