// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS AppMesh service.

AWS App Mesh is a service mesh based on the Envoy proxy that makes it easy to monitor and
         control microservices. App Mesh standardizes how your microservices communicate, giving you
         end-to-end visibility and helping to ensure high availability for your applications.
         App Mesh gives you consistent visibility and network traffic controls for every
         microservice in an application. You can use App Mesh with AWS Fargate, Amazon ECS, Amazon EKS,
         Kubernetes on AWS, and Amazon EC2.
         
            App Mesh supports microservice applications that use service discovery naming for their
            components. For more information about service discovery on Amazon ECS, see Service Discovery in the
               Amazon Elastic Container Service Developer Guide. Kubernetes kube-dns and
               coredns are supported. For more information, see DNS
               for Services and Pods in the Kubernetes documentation.
         
*/
public struct AppMesh {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AppMesh client
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
            service: "appmesh",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-01-25",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AppMeshErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a service mesh. A service mesh is a logical boundary for network traffic between
    ///           the services that reside within it.
    ///           After you create your service mesh, you can create virtual services, virtual nodes,
    ///           virtual routers, and routes to distribute traffic between the applications in your
    ///           mesh.
    public func createMesh(_ input: CreateMeshInput) -> EventLoopFuture<CreateMeshOutput> {
        return client.send(operation: "CreateMesh", path: "/v20190125/meshes", httpMethod: "PUT", input: input)
    }

    ///  Creates a route that is associated with a virtual router.
    ///           You can use the prefix parameter in your route specification for path-based
    ///           routing of requests. For example, if your virtual service name is
    ///              my-service.local and you want the route to match requests to
    ///              my-service.local/metrics, your prefix should be
    ///           /metrics.
    ///           If your route matches a request, you can distribute traffic to one or more target
    ///           virtual nodes with relative weighting.
    public func createRoute(_ input: CreateRouteInput) -> EventLoopFuture<CreateRouteOutput> {
        return client.send(operation: "CreateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: "PUT", input: input)
    }

    ///  Creates a virtual node within a service mesh.
    ///           A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS
    ///           service or a Kubernetes deployment. When you create a virtual node, you can specify the
    ///           service discovery information for your task group.
    ///           Any inbound traffic that your virtual node expects should be specified as a
    ///              listener. Any outbound traffic that your virtual node expects to reach
    ///           should be specified as a backend.
    ///           The response metadata for your new virtual node contains the arn that is
    ///           associated with the virtual node. Set this value (either the full ARN or the truncated
    ///           resource name: for example, mesh/default/virtualNode/simpleapp) as the
    ///              APPMESH_VIRTUAL_NODE_NAME environment variable for your task group's Envoy
    ///           proxy container in your task definition or pod spec. This is then mapped to the
    ///              node.id and node.cluster Envoy parameters.
    ///           
    ///              If you require your Envoy stats or tracing to use a different name, you can override
    ///              the node.cluster value that is set by
    ///                 APPMESH_VIRTUAL_NODE_NAME with the
    ///                 APPMESH_VIRTUAL_NODE_CLUSTER environment variable.
    ///           
    public func createVirtualNode(_ input: CreateVirtualNodeInput) -> EventLoopFuture<CreateVirtualNodeOutput> {
        return client.send(operation: "CreateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: "PUT", input: input)
    }

    ///  Creates a virtual router within a service mesh.
    ///           Any inbound traffic that your virtual router expects should be specified as a
    ///              listener. 
    ///           Virtual routers handle traffic for one or more virtual services within your mesh. After
    ///           you create your virtual router, create and associate routes for your virtual router that
    ///           direct incoming requests to different virtual nodes.
    public func createVirtualRouter(_ input: CreateVirtualRouterInput) -> EventLoopFuture<CreateVirtualRouterOutput> {
        return client.send(operation: "CreateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: "PUT", input: input)
    }

    ///  Creates a virtual service within a service mesh.
    ///           A virtual service is an abstraction of a real service that is provided by a virtual node
    ///           directly or indirectly by means of a virtual router. Dependent services call your virtual
    ///           service by its virtualServiceName, and those requests are routed to the
    ///           virtual node or virtual router that is specified as the provider for the virtual
    ///           service.
    public func createVirtualService(_ input: CreateVirtualServiceInput) -> EventLoopFuture<CreateVirtualServiceOutput> {
        return client.send(operation: "CreateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: "PUT", input: input)
    }

    ///  Deletes an existing service mesh.
    ///           You must delete all resources (virtual services, routes, virtual routers, and virtual
    ///           nodes) in the service mesh before you can delete the mesh itself.
    public func deleteMesh(_ input: DeleteMeshInput) -> EventLoopFuture<DeleteMeshOutput> {
        return client.send(operation: "DeleteMesh", path: "/v20190125/meshes/{meshName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing route.
    public func deleteRoute(_ input: DeleteRouteInput) -> EventLoopFuture<DeleteRouteOutput> {
        return client.send(operation: "DeleteRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing virtual node.
    ///           You must delete any virtual services that list a virtual node as a service provider
    ///           before you can delete the virtual node itself.
    public func deleteVirtualNode(_ input: DeleteVirtualNodeInput) -> EventLoopFuture<DeleteVirtualNodeOutput> {
        return client.send(operation: "DeleteVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing virtual router.
    ///           You must delete any routes associated with the virtual router before you can delete the
    ///           router itself.
    public func deleteVirtualRouter(_ input: DeleteVirtualRouterInput) -> EventLoopFuture<DeleteVirtualRouterOutput> {
        return client.send(operation: "DeleteVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing virtual service.
    public func deleteVirtualService(_ input: DeleteVirtualServiceInput) -> EventLoopFuture<DeleteVirtualServiceOutput> {
        return client.send(operation: "DeleteVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: "DELETE", input: input)
    }

    ///  Describes an existing service mesh.
    public func describeMesh(_ input: DescribeMeshInput) -> EventLoopFuture<DescribeMeshOutput> {
        return client.send(operation: "DescribeMesh", path: "/v20190125/meshes/{meshName}", httpMethod: "GET", input: input)
    }

    ///  Describes an existing route.
    public func describeRoute(_ input: DescribeRouteInput) -> EventLoopFuture<DescribeRouteOutput> {
        return client.send(operation: "DescribeRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: "GET", input: input)
    }

    ///  Describes an existing virtual node.
    public func describeVirtualNode(_ input: DescribeVirtualNodeInput) -> EventLoopFuture<DescribeVirtualNodeOutput> {
        return client.send(operation: "DescribeVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: "GET", input: input)
    }

    ///  Describes an existing virtual router.
    public func describeVirtualRouter(_ input: DescribeVirtualRouterInput) -> EventLoopFuture<DescribeVirtualRouterOutput> {
        return client.send(operation: "DescribeVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: "GET", input: input)
    }

    ///  Describes an existing virtual service.
    public func describeVirtualService(_ input: DescribeVirtualServiceInput) -> EventLoopFuture<DescribeVirtualServiceOutput> {
        return client.send(operation: "DescribeVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: "GET", input: input)
    }

    ///  Returns a list of existing service meshes.
    public func listMeshes(_ input: ListMeshesInput) -> EventLoopFuture<ListMeshesOutput> {
        return client.send(operation: "ListMeshes", path: "/v20190125/meshes", httpMethod: "GET", input: input)
    }

    ///  Returns a list of existing routes in a service mesh.
    public func listRoutes(_ input: ListRoutesInput) -> EventLoopFuture<ListRoutesOutput> {
        return client.send(operation: "ListRoutes", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: "GET", input: input)
    }

    ///  List the tags for an App Mesh resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput) -> EventLoopFuture<ListTagsForResourceOutput> {
        return client.send(operation: "ListTagsForResource", path: "/v20190125/tags", httpMethod: "GET", input: input)
    }

    ///  Returns a list of existing virtual nodes.
    public func listVirtualNodes(_ input: ListVirtualNodesInput) -> EventLoopFuture<ListVirtualNodesOutput> {
        return client.send(operation: "ListVirtualNodes", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: "GET", input: input)
    }

    ///  Returns a list of existing virtual routers in a service mesh.
    public func listVirtualRouters(_ input: ListVirtualRoutersInput) -> EventLoopFuture<ListVirtualRoutersOutput> {
        return client.send(operation: "ListVirtualRouters", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: "GET", input: input)
    }

    ///  Returns a list of existing virtual services in a service mesh.
    public func listVirtualServices(_ input: ListVirtualServicesInput) -> EventLoopFuture<ListVirtualServicesOutput> {
        return client.send(operation: "ListVirtualServices", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: "GET", input: input)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn.
    ///           If existing tags on a resource aren't specified in the request parameters, they aren't
    ///           changed. When a resource is deleted, the tags associated with that resource are also
    ///           deleted.
    public func tagResource(_ input: TagResourceInput) -> EventLoopFuture<TagResourceOutput> {
        return client.send(operation: "TagResource", path: "/v20190125/tag", httpMethod: "PUT", input: input)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceInput) -> EventLoopFuture<UntagResourceOutput> {
        return client.send(operation: "UntagResource", path: "/v20190125/untag", httpMethod: "PUT", input: input)
    }

    ///  Updates an existing service mesh.
    public func updateMesh(_ input: UpdateMeshInput) -> EventLoopFuture<UpdateMeshOutput> {
        return client.send(operation: "UpdateMesh", path: "/v20190125/meshes/{meshName}", httpMethod: "PUT", input: input)
    }

    ///  Updates an existing route for a specified service mesh and virtual router.
    public func updateRoute(_ input: UpdateRouteInput) -> EventLoopFuture<UpdateRouteOutput> {
        return client.send(operation: "UpdateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: "PUT", input: input)
    }

    ///  Updates an existing virtual node in a specified service mesh.
    public func updateVirtualNode(_ input: UpdateVirtualNodeInput) -> EventLoopFuture<UpdateVirtualNodeOutput> {
        return client.send(operation: "UpdateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: "PUT", input: input)
    }

    ///  Updates an existing virtual router in a specified service mesh.
    public func updateVirtualRouter(_ input: UpdateVirtualRouterInput) -> EventLoopFuture<UpdateVirtualRouterOutput> {
        return client.send(operation: "UpdateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: "PUT", input: input)
    }

    ///  Updates an existing virtual service in a specified service mesh.
    public func updateVirtualService(_ input: UpdateVirtualServiceInput) -> EventLoopFuture<UpdateVirtualServiceOutput> {
        return client.send(operation: "UpdateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: "PUT", input: input)
    }
}
