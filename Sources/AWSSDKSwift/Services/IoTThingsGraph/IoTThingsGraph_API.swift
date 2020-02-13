// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS IoTThingsGraph service.

AWS IoT Things Graph AWS IoT Things Graph provides an integrated set of tools that enable developers to connect devices and services that use different standards, such as units of measure and communication protocols. AWS IoT Things Graph makes it possible to build IoT applications with little to no code by connecting devices and services and defining how they interact at an abstract level. For more information about how AWS IoT Things Graph works, see the User Guide.
*/
public struct IoTThingsGraph {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the IoTThingsGraph client
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
            amzTarget: "IotThingsGraphFrontEndService",
            service: "iotthingsgraph",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-09-06",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoTThingsGraphErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates a device with a concrete thing that is in the user's registry. A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.
    public func associateEntityToThing(_ input: AssociateEntityToThingRequest) -> EventLoopFuture<AssociateEntityToThingResponse> {
        return client.send(operation: "AssociateEntityToThing", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.
    public func createFlowTemplate(_ input: CreateFlowTemplateRequest) -> EventLoopFuture<CreateFlowTemplateResponse> {
        return client.send(operation: "CreateFlowTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a system instance.  This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is specified by the greengrassGroupName parameter. It also adds a file to the S3 bucket specified by the s3BucketName parameter. You need to call DeploySystemInstance after running this action. For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error. For cloud deployments, this action requires a flowActionsRoleArn value. This is an IAM role that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes. If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.
    public func createSystemInstance(_ input: CreateSystemInstanceRequest) -> EventLoopFuture<CreateSystemInstanceResponse> {
        return client.send(operation: "CreateSystemInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a system. The system is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.
    public func createSystemTemplate(_ input: CreateSystemTemplateRequest) -> EventLoopFuture<CreateSystemTemplateResponse> {
        return client.send(operation: "CreateSystemTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy. Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).
    public func deleteFlowTemplate(_ input: DeleteFlowTemplateRequest) -> EventLoopFuture<DeleteFlowTemplateResponse> {
        return client.send(operation: "DeleteFlowTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action.
    public func deleteNamespace(_ input: DeleteNamespaceRequest) -> EventLoopFuture<DeleteNamespaceResponse> {
        return client.send(operation: "DeleteNamespace", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a system instance. Only system instances that have never been deployed, or that have been undeployed can be deleted. Users can create a new system instance that has the same ID as a deleted system instance.
    public func deleteSystemInstance(_ input: DeleteSystemInstanceRequest) -> EventLoopFuture<DeleteSystemInstanceResponse> {
        return client.send(operation: "DeleteSystemInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a system. New deployments can't contain the system after its deletion. Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.
    public func deleteSystemTemplate(_ input: DeleteSystemTemplateRequest) -> EventLoopFuture<DeleteSystemTemplateResponse> {
        return client.send(operation: "DeleteSystemTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///   Greengrass and Cloud Deployments  Deploys the system instance to the target specified in CreateSystemInstance.   Greengrass Deployments  If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service resource file and then deploy it. Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions to the specified Greengrass group. Otherwise, the call will fail with an authorization error. For information about the artifacts that get added to your Greengrass core device when you use this API, see AWS IoT Things Graph and AWS IoT Greengrass.
    public func deploySystemInstance(_ input: DeploySystemInstanceRequest) -> EventLoopFuture<DeploySystemInstanceResponse> {
        return client.send(operation: "DeploySystemInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.
    public func deprecateFlowTemplate(_ input: DeprecateFlowTemplateRequest) -> EventLoopFuture<DeprecateFlowTemplateResponse> {
        return client.send(operation: "DeprecateFlowTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecates the specified system.
    public func deprecateSystemTemplate(_ input: DeprecateSystemTemplateRequest) -> EventLoopFuture<DeprecateSystemTemplateResponse> {
        return client.send(operation: "DeprecateSystemTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the latest version of the user's namespace and the public version that it is tracking.
    public func describeNamespace(_ input: DescribeNamespaceRequest) -> EventLoopFuture<DescribeNamespaceResponse> {
        return client.send(operation: "DescribeNamespace", path: "/", httpMethod: "POST", input: input)
    }

    ///  Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only one entity of a particular type can be associated with a thing.
    public func dissociateEntityFromThing(_ input: DissociateEntityFromThingRequest) -> EventLoopFuture<DissociateEntityFromThingResponse> {
        return client.send(operation: "DissociateEntityFromThing", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the following TDM entities.   Properties   States   Events   Actions   Capabilities   Mappings   Devices   Device Models   Services   This action doesn't return definitions for systems, flows, and deployments.
    public func getEntities(_ input: GetEntitiesRequest) -> EventLoopFuture<GetEntitiesResponse> {
        return client.send(operation: "GetEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the latest version of the DefinitionDocument and FlowTemplateSummary for the specified workflow.
    public func getFlowTemplate(_ input: GetFlowTemplateRequest) -> EventLoopFuture<GetFlowTemplateResponse> {
        return client.send(operation: "GetFlowTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.
    public func getFlowTemplateRevisions(_ input: GetFlowTemplateRevisionsRequest) -> EventLoopFuture<GetFlowTemplateRevisionsResponse> {
        return client.send(operation: "GetFlowTemplateRevisions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the status of a namespace deletion task.
    public func getNamespaceDeletionStatus(_ input: GetNamespaceDeletionStatusRequest) -> EventLoopFuture<GetNamespaceDeletionStatusResponse> {
        return client.send(operation: "GetNamespaceDeletionStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a system instance.
    public func getSystemInstance(_ input: GetSystemInstanceRequest) -> EventLoopFuture<GetSystemInstanceResponse> {
        return client.send(operation: "GetSystemInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a system.
    public func getSystemTemplate(_ input: GetSystemTemplateRequest) -> EventLoopFuture<GetSystemTemplateResponse> {
        return client.send(operation: "GetSystemTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.
    public func getSystemTemplateRevisions(_ input: GetSystemTemplateRevisionsRequest) -> EventLoopFuture<GetSystemTemplateRevisionsResponse> {
        return client.send(operation: "GetSystemTemplateRevisions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the status of the specified upload.
    public func getUploadStatus(_ input: GetUploadStatusRequest) -> EventLoopFuture<GetUploadStatusResponse> {
        return client.send(operation: "GetUploadStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of objects that contain information about events in a flow execution.
    public func listFlowExecutionMessages(_ input: ListFlowExecutionMessagesRequest) -> EventLoopFuture<ListFlowExecutionMessagesResponse> {
        return client.send(operation: "ListFlowExecutionMessages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags on an AWS IoT Things Graph resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.
    public func searchEntities(_ input: SearchEntitiesRequest) -> EventLoopFuture<SearchEntitiesResponse> {
        return client.send(operation: "SearchEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches for AWS IoT Things Graph workflow execution instances.
    public func searchFlowExecutions(_ input: SearchFlowExecutionsRequest) -> EventLoopFuture<SearchFlowExecutionsResponse> {
        return client.send(operation: "SearchFlowExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches for summary information about workflows.
    public func searchFlowTemplates(_ input: SearchFlowTemplatesRequest) -> EventLoopFuture<SearchFlowTemplatesResponse> {
        return client.send(operation: "SearchFlowTemplates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches for system instances in the user's account.
    public func searchSystemInstances(_ input: SearchSystemInstancesRequest) -> EventLoopFuture<SearchSystemInstancesResponse> {
        return client.send(operation: "SearchSystemInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.
    public func searchSystemTemplates(_ input: SearchSystemTemplatesRequest) -> EventLoopFuture<SearchSystemTemplatesResponse> {
        return client.send(operation: "SearchSystemTemplates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches for things associated with the specified entity. You can search by both device and device model. For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. SearchThings(camera2) will return only thing2, but SearchThings(camera) will return both thing1 and thing2. This action searches for exact matches and doesn't perform partial text matching.
    public func searchThings(_ input: SearchThingsRequest) -> EventLoopFuture<SearchThingsResponse> {
        return client.send(operation: "SearchThings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a tag for the specified resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a system instance from its target (Cloud or Greengrass).
    public func undeploySystemInstance(_ input: UndeploySystemInstanceRequest) -> EventLoopFuture<UndeploySystemInstanceResponse> {
        return client.send(operation: "UndeploySystemInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a tag from the specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. 
    public func updateFlowTemplate(_ input: UpdateFlowTemplateRequest) -> EventLoopFuture<UpdateFlowTemplateResponse> {
        return client.send(operation: "UpdateFlowTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.
    public func updateSystemTemplate(_ input: UpdateSystemTemplateRequest) -> EventLoopFuture<UpdateSystemTemplateResponse> {
        return client.send(operation: "UpdateSystemTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Asynchronously uploads one or more entity definitions to the user's namespace. The document parameter is required if syncWithPublicNamespace and deleteExistingEntites are false. If the syncWithPublicNamespace parameter is set to true, the user's namespace will synchronize with the latest version of the public namespace. If deprecateExistingEntities is set to true, all entities in the latest version will be deleted before the new DefinitionDocument is uploaded. When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the syncWithPublicNamespace parameter or the deprecateExistingEntities parameter to true. The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace. Valid entities are Device, DeviceModel, Service, Capability, State, Action, Event, Property, Mapping, Enum. 
    public func uploadEntityDefinitions(_ input: UploadEntityDefinitionsRequest) -> EventLoopFuture<UploadEntityDefinitionsResponse> {
        return client.send(operation: "UploadEntityDefinitions", path: "/", httpMethod: "POST", input: input)
    }
}
